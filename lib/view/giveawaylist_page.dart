import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gg/application/cubit/giveaway_cubit.dart';
import 'package:gg/view/giveaway_page.dart';
import 'package:google_fonts/google_fonts.dart';

class GiveawayList extends StatelessWidget {
  const GiveawayList({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<GiveawayCubit>().getGiveAway();

    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            "Giveaway",
            style: GoogleFonts.sourceSansPro(),
          )),
      backgroundColor: Colors.teal,
      body: BlocBuilder<GiveawayCubit, GiveawayState>(
        builder: (context, state) {
          return state.map(loading: (_) {
            return const Center(child: CircularProgressIndicator());
          }, loaded: (value) {
            final giveawayList = value.giveAway;
            return ListView.builder(
              itemCount: giveawayList.length,
              itemBuilder: (BuildContext context, int index) {
                final giveaway = giveawayList[index];

                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => GiveAwayPage(
                                giveawayId: giveaway.id,
                              )),
                    );
                  },
                  child: Card(
                    color: Colors.transparent,
                    elevation: 20,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.network(giveaway.thumbnail)),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              giveaway.title,
                              style: GoogleFonts.sourceSansPro(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          }, error: (value) {
            return const Center(child: CircularProgressIndicator());
          });
        },
      ),
    );
  }
}
