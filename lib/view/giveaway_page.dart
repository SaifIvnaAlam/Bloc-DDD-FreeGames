import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gg/application/cubit/giveaway_by_id_cubit.dart';

class GiveAwayPage extends StatelessWidget {
  final int giveawayId;
  const GiveAwayPage({super.key, required this.giveawayId});

  @override
  Widget build(BuildContext context) {
    context.read<GiveawayByIdCubit>().getGiveawayById(giveawayId);

    return Scaffold(body: BlocBuilder<GiveawayByIdCubit, GiveawayByIdState>(
      builder: (context, state) {
        return state.map(loading: (_) {
          return const Center(child: CircularProgressIndicator());
        }, loaded: (value) {
          final giveaway = value.giveAway;
          String title = giveaway.title;
          String? description = giveaway.description!;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(giveaway.image),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.white)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Title: $title"),
                      const SizedBox(
                        height: 10,
                      ),
                      Text("Description: $description")
                    ],
                  ),
                ),
              )
            ],
          );
        }, error: (value) {
          return const Center(child: CircularProgressIndicator());
        });
      },
    ));
  }
}
