import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gg/freegame/application/cubit/freegamelist_cubit.dart';
import 'package:gg/view/freegamebyid_page.dart';
import 'package:google_fonts/google_fonts.dart';

class FreeGameList extends StatelessWidget {
  const FreeGameList({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<FreegamelistCubit>().getFreeGameList();
    return Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
            centerTitle: true,
            elevation: 0,
            backgroundColor: Colors.teal,
            title: const Text("FreeGames")),
        body: BlocBuilder<FreegamelistCubit, FreegamelistState>(
          builder: (context, state) {
            return state.map(loading: (_) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }, loaded: (value) {
              var freeGameList = value.freeGameList;
              return ListView.builder(
                  itemCount: freeGameList.length,
                  itemBuilder: (BuildContext context, int index) {
                    final data = freeGameList[index];

                    return Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FreeGameById(
                                      freeGameId: data.id!,
                                    )),
                          );
                        },
                        child: Card(
                          color: Colors.transparent,
                          elevation: 20,
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(12),
                                        child: Image.network(data.thumbnail)),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      data.title,
                                      style: GoogleFonts.sourceSansPro(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  });
            }, error: (value) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            });
          },
        ));
  }
}
