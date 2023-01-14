import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gg/freegame/application/cubit/free_game_by_id_cubit.dart';
import 'package:gg/view/component/primary_button.dart';

class FreeGameById extends StatelessWidget {
  final int freeGameId;
  const FreeGameById({super.key, required this.freeGameId});

  @override
  Widget build(BuildContext context) {
    context.read<FreeGameByIdCubit>().getFreeGameById(freeGameId);

    return Scaffold(
      backgroundColor: const Color(0xff3A4F7A),
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
                child: SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                          width: double.infinity,
                          child: Image.network(
                            freeGame.thumbnail,
                            fit: BoxFit.contain,
                            alignment: Alignment.center,
                          )),
                      const SizedBox(height: 20),
                      Container(
                        color: Colors.black12,
                        height: 200,
                        width: double.infinity,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Center(
                                child: Text(
                                  freeGame.title,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.amberAccent),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Text(freeGame.description!),
                              )
                            ],
                          ),
                        ),
                      ),
                      Spacer(),
                      PrimaryButton(text: "Get game", onTap: () {})
                    ],
                  ),
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
