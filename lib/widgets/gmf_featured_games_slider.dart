import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../models/game.dart';

class GMFFeaturedGamesSlider extends StatelessWidget {
  final int currentIdx;
  final List<Game> featuredGames;
  final void Function(int) onPageChanged;

  const GMFFeaturedGamesSlider({
    super.key,
    required this.currentIdx,
    required this.featuredGames,
    required this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    return PageView(
      onPageChanged: onPageChanged,
      children: featuredGames
          .map((d) => CachedNetworkImage(
                imageUrl: d.coverImage.url,
                fit: BoxFit.cover,
              ))
          .toList(),
    );
  }
}
