import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gg/freegame/application/cubit/freegamelist_cubit.dart';
import 'package:gg/view/component/game_card.dart';
import 'package:gg/view/component/thumbnail_preview.dart';
import 'package:gg/view/freegamebyid_page.dart';
import 'package:google_fonts/google_fonts.dart';

class FreeGameList extends StatelessWidget {
  const FreeGameList({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<FreegamelistCubit>().getFreeGameList();
    return Scaffold(
        backgroundColor: Colors.teal,
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            const SliverAppBar(
              backgroundColor: Colors.transparent,
              centerTitle: true,
              title: Text("Free Games"),
            )
          ],
          body: BlocBuilder<FreegamelistCubit, FreegamelistState>(
            builder: (context, state) {
              return state.map(loading: (_) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }, loaded: (value) {
                var freeGameList = value.freeGameList;
                return ListView.builder(
                  key: const PageStorageKey('free-games-list'),
                  itemCount: freeGameList.length,
                  padding: const EdgeInsets.only(top: 16),
                  itemBuilder: (context, index) {
                    final game = freeGameList[index];
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GameCard(game: game),
                      ),
                    );
                  },
                );
              }, error: (value) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              });
            },
          ),
        ));
  }
}
