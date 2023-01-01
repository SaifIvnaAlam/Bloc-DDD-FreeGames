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

          return Column(
            children: [
              Image.network(giveaway.image),
              Text(giveaway.title),
              Text(giveaway.description!)
            ],
          );
        }, error: (value) {
          return const Center(child: CircularProgressIndicator());
        });
      },
    ));
  }
}
