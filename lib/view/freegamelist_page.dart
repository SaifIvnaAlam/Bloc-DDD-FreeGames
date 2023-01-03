import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gg/freegame/application/cubit/freegamelist_cubit.dart';

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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(data.thumbnail),
                          Text(data.title),
                        ],
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
