import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../data/data.dart';

class HomScreen extends StatelessWidget {
  const HomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SizedBox(
        width: screenSize.width,
        height: screenSize.height / 2,
        child: PageView(
          children: featuredGames
              .map((d) => CachedNetworkImage(
                    imageUrl: d.coverImage.url,
                    fit: BoxFit.cover,
                  ))
              .toList(),
        ),
      ),
    );
  }
}
