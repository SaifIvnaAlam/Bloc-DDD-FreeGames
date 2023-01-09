import 'package:flutter/material.dart';
import 'package:gg/domain/giveaway.dart';
import 'package:gg/view/giveaway_page.dart';

class GiveAwayGameCard extends StatelessWidget {
  final GiveAway game;

  const GiveAwayGameCard({
    Key? key,
    required this.game,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 420,
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Stack(children: [
                Material(
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                  color: Theme.of(context).cardColor,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              GiveAwayPage(giveawayId: game.id),
                        ),
                      );
                    },
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16),
                          ),
                          child: SizedBox(
                              width: double.infinity,
                              child: Image.network(
                                game.thumbnail,
                                fit: BoxFit.contain,
                                alignment: Alignment.center,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Text(
                            game.title,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.amberAccent),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Padding(
                          padding: const EdgeInsets.only(
                              bottom: 5, left: 16, right: 16),
                          child: Expanded(
                            child: Text(
                              game.description!,
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(fontSize: 14),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
