import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gg/application/cubit/giveaway_by_id_cubit.dart';
import 'package:gg/application/cubit/giveaway_cubit.dart';
import 'package:gg/freegame/application/cubit/free_game_by_id_cubit.dart';
import 'package:gg/freegame/application/cubit/freegamelist_cubit.dart';
import 'package:gg/freegame/infrastructure/freegame_repository.dart';
import 'package:gg/infrastructure/giveaway_repository.dart';

import 'package:gg/view/home.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const GamesAndGiveaway());
}

class GamesAndGiveaway extends StatelessWidget {
  const GamesAndGiveaway({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<GiveawayCubit>(
          create: (context) => GiveawayCubit(GiveAwayRepository()),
        ),
        BlocProvider<GiveawayByIdCubit>(
          create: (context) => GiveawayByIdCubit(GiveAwayRepository()),
        ),
        BlocProvider<FreegamelistCubit>(
          create: (context) => FreegamelistCubit(FreeGameRepository()),
        ),
        BlocProvider<FreeGameByIdCubit>(
          create: (context) => FreeGameByIdCubit(FreeGameRepository()),
        ),
      ],
      child: MaterialApp(
        title: 'GG',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          canvasColor: const Color(0xFF171717),
          cardColor: const Color(0xFF22252B),
          fontFamily: GoogleFonts.merriweather().fontFamily,
          appBarTheme: const AppBarTheme(
            color: Color(0xFF22252B),
            titleTextStyle:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          colorScheme:
              ColorScheme.fromSwatch(primarySwatch: Colors.yellow).copyWith(
            secondary: const Color.fromARGB(255, 48, 165, 149),
            brightness: Brightness.dark,
          ),
        ),
        home: Home(),
      ),
    );
  }
}
