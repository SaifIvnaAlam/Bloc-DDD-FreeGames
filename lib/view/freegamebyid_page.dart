import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gg/freegame/application/cubit/free_game_by_id_cubit.dart';

class FreeGameById extends StatelessWidget {
  final int freeGameId;
  const FreeGameById({super.key, required this.freeGameId});

  @override
  Widget build(BuildContext context) {
    context.read<FreeGameByIdCubit>().getFreeGameById(freeGameId);

    return Scaffold(
      body: BlocBuilder<FreeGameByIdCubit, FreeGameByIdState>(
        builder: (context, state) {
          return state.map(
            loading: (_) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            loaded: (value) {
              var freeGame = value.freeGames;
              return Center(
                child: Column(
                  children: [
                    Image.network(freeGame.thumbnail),
                    Text(freeGame.title)
                  ],
                ),
              );
            },
            error: (_) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          );
        },
      ),
    );
  }
}
