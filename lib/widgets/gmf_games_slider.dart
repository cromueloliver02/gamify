import 'package:flutter/material.dart';
import '../models/game.dart';
import '../widgets/gmf_game_card.dart';

class GMFGameSlider extends StatelessWidget {
  final List<Game> games;
  final bool showTitles;

  const GMFGameSlider({
    super.key,
    required this.games,
    this.showTitles = true,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190,
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 10),
        scrollDirection: Axis.horizontal,
        itemCount: games.length,
        itemBuilder: (ctx, idx) {
          final game = games[idx];

          return GMFGameCard(
            game: game,
            showTitle: showTitles,
          );
        },
      ),
    );
  }
}
