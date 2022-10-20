import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../models/game.dart';

class GMFGameCard extends StatelessWidget {
  final Game game;

  const GMFGameCard({
    super.key,
    required this.game,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final gameCardWith = screenSize.width * 0.25;

    return Container(
      margin: const EdgeInsets.only(right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: gameCardWith,
            height: 150,
            color: Colors.grey[200],
            child: Stack(
              alignment: Alignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.info,
                      size: 30,
                      color: Colors.black54,
                    ),
                    SizedBox(height: 5),
                    Text(
                      'LOADING...',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
                CachedNetworkImage(
                  imageUrl: game.coverImage.url,
                  height: double.infinity,
                  width: gameCardWith,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
          SizedBox(
            width: gameCardWith,
            height: 35,
            child: Text(
              game.title,
              maxLines: 2,
              textAlign: TextAlign.left,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
