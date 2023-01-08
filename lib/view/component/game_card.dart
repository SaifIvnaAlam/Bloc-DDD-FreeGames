import 'package:flutter/material.dart';
import 'package:gg/freegame/domain/freegame.dart';
import 'package:gg/view/freegamebyid_page.dart';

import 'thumbnail_preview.dart';

class GameCard extends StatelessWidget {
  final FreeGames game;

  const GameCard({
    Key? key,
    required this.game,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 198,
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ThumbnailPreview(
            imageUrl: game.thumbnail,
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Material(
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
                color: Theme.of(context).cardColor,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            FreeGameById(freeGameId: game.id!),
                      ),
                    );
                  },
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          game.title,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.amberAccent),
                        ),
                        const SizedBox(height: 8),
                        Expanded(
                          child: Text(
                            game.shortDescription!,
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(fontSize: 14),
                          ),
                        ),
                        const SizedBox(height: 8),
                        buildFooter(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row buildFooter() {
    return Row(
      children: [
        Container(
          height: 20,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 50, 191, 216),
            borderRadius: BorderRadius.circular(3),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 2,
              vertical: 2,
            ),
            child: Center(
              child: Text(
                "patform",
                style: TextStyle(fontSize: 12),
              ),
            ),
          ),
        ),
        const SizedBox(width: 8),
        Container(
          height: 20,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 50, 191, 216),
            borderRadius: BorderRadius.circular(3),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 2,
              vertical: 2,
            ),
            child: Center(
              child: Text(
                game.genre!,
                style: const TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
