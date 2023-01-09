import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gg/application/cubit/giveaway_cubit.dart';
import 'package:gg/view/component/giveaway_game_card.dart';
import 'package:gg/view/giveaway_page.dart';
import 'package:google_fonts/google_fonts.dart';

class GiveawayList extends StatelessWidget {
  const GiveawayList({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<GiveawayCubit>().getGiveAway();

    return Scaffold(
      backgroundColor: Color(0xff3A4F7A),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            flexibleSpace: FlexibleSpaceBar(
              title: RichText(
                text: const TextSpan(children: [
                  TextSpan(
                    text: "Free",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: "\n"),
                  TextSpan(
                    text: "GiveAway",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffE98EAD),
                    ),
                  )
                ]),
              ),
              titlePadding: const EdgeInsets.only(
                left: 20,
              ),
            ),
            backgroundColor: Colors.transparent,
            expandedHeight: 100.0,
          )
        ],
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
                        showModalBottomSheet<void>(
                          // context and builder are
                          // required properties in this widget
                          context: context,
                          builder: (BuildContext context) {
                            // we set up a container inside which
                            // we create center column and display text

                            // Returning SizedBox instead of a Container
                            return SizedBox(
                              height: 400,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Image.network(giveaway.thumbnail,
                                      fit: BoxFit.fitWidth),
                                  Text(giveaway.title),
                                ],
                              ),
                            );
                          },
                        ); // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => GiveAwayPage(
                        //             giveawayId: giveaway.id,
                        //           )),
                        // );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: GiveAwayGameCard(
                          game: giveaway,
                        ),
                      ));
                },
              );
            }, error: (value) {
              return const Center(child: CircularProgressIndicator());
            });
          },
        ),
      ),
    );
  }
}
