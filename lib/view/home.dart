import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:gg/view/freegamelist_page.dart';
import 'package:gg/view/giveawaylist_page.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedItemPosition = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int index) {
    setState(
      () => _selectedItemPosition = index,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Stack(
        children: [
          AnimatedContainer(
            duration: const Duration(seconds: 1),
            child: PageView(
              controller: _pageController,
              onPageChanged: _onPageChanged,
              children: const <Widget>[
                GiveawayList(),
                FreeGameList(),
                // const GameDealPage(),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Theme.of(context).canvasColor.withOpacity(0),
                    Theme.of(context).canvasColor,
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: SnakeNavigationBar.color(
        snakeViewColor: Color(0xff2C74B3),
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
          BottomNavigationBarItem(icon: Text("GiveAway")),
          BottomNavigationBarItem(icon: Text("Free Games")),
        ],
        currentIndex: _selectedItemPosition,
        onTap: (index) {
          setState(
            () => _selectedItemPosition = index,
          );
          _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.linear,
          );
        },
      ),
    );
  }
}
