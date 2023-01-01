import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:gg/application/cubit/giveaway_cubit.dart';
import 'package:gg/const.dart';
import 'package:gg/view/giveaway_page.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends HookWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<GiveawayCubit>().getGiveAway();

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            "Giveaway",
            style: GoogleFonts.sourceSansPro(),
          )),
      backgroundColor: scaffoldbackground,
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
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Card(
                      color: Color(0xff312B4F),
                      elevation: 20,
                      child: Container(
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Colors.black, Colors.blue],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter)),
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
      bottomNavigationBar: SnakeNavigationBar.color(
        snakeViewColor: Theme.of(context).colorScheme.secondary,
        behaviour: SnakeBarBehaviour.floating,
        snakeShape: SnakeShape.rectangle,
        padding: const EdgeInsets.all(16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        unselectedItemColor: Theme.of(context).colorScheme.secondary,
        selectedItemColor: Colors.white,
        showSelectedLabels: true,
        backgroundColor: Theme.of(context).cardColor,
        selectedLabelStyle: GoogleFonts.merriweather(
          fontWeight: FontWeight.w900,
          shadows: [
            const BoxShadow(
              //color: Colors.black,
              blurRadius: 13.0,
              spreadRadius: 5.0,
            ),
          ],
        ),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home)),
          BottomNavigationBarItem(icon: Icon(Icons.access_alarm)),
        ],
        currentIndex: 0,
        onTap: (index) {
          // setState(
          //   () => _selectedItemPosition = index,
          // );
          // _pageController.animateToPage(
          //   index,
          //   duration: const Duration(milliseconds: 300),
          //   curve: Curves.linear,
          // );
        },
      ),
    );
  }
}
