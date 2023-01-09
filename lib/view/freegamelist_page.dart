import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gg/freegame/application/cubit/freegamelist_cubit.dart';
import 'package:gg/view/component/game_card.dart';

class FreeGameList extends StatelessWidget {
  const FreeGameList({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<FreegamelistCubit>().getFreeGameList();
    return Scaffold(
        backgroundColor: Color(0xff3A4F7A),
        body: SafeArea(
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
              SliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  title: RichText(
                    text: const TextSpan(children: [
                      TextSpan(
                        text: "Free",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: "\n"),
                      TextSpan(
                        text: "Games",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffE98EAD),
                        ),
                      )
                    ]),
                  ),
                  titlePadding: EdgeInsets.only(
                    left: 20,
                  ),
                ),
                backgroundColor: Colors.transparent,
                expandedHeight: 100.0,
              )
            ],
            body: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: BlocBuilder<FreegamelistCubit, FreegamelistState>(
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
            ),
          ),
        ));
  }
}
