import 'package:flutter/material.dart';
import '../models/game.dart';

class GMFGradientOverlay extends StatelessWidget {
  final double width;
  final double height;
  final int currentIdx;
  final List<Game> featuredGames;

  const GMFGradientOverlay({
    super.key,
    required this.width,
    required this.height,
    required this.currentIdx,
    required this.featuredGames,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.symmetric(horizontal: 30),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          stops: [0.65, 1],
          colors: [
            Color.fromRGBO(35, 45, 59, 1),
            Colors.transparent,
          ],
        ),
      ),
      child: Text(
        featuredGames[currentIdx].title,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(fontSize: 40),
      ),
    );
  }
}
