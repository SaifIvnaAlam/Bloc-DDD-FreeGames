import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gg/application/cubit/giveaway_by_id_cubit.dart';
import 'package:gg/application/cubit/giveaway_cubit.dart';
import 'package:gg/freegame/application/cubit/free_game_by_id_cubit.dart';
import 'package:gg/freegame/application/cubit/freegamelist_cubit.dart';
import 'package:gg/freegame/infrastructure/freegame_repository.dart';
import 'package:gg/infrastructure/giveaway_repository.dart';
import 'package:gg/view/freegamelist_page.dart';
import 'package:gg/view/giveawaylist_page.dart';
import 'package:gg/view/home.dart';

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
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}
