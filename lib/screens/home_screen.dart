import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../widgets/gmf_menu_button.dart';
import '../data/data.dart';

class HomScreen extends StatelessWidget {
  const HomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
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
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: screenSize.width,
              height: screenSize.height * 0.75,
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
            ),
          ),
          Positioned(
            top: 60,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              width: screenSize.width,
              child: Row(
                children: [
                  GMFMenuButton(
                    iconData: Icons.menu,
                    onPressed: () {},
                  ),
                  const Spacer(),
                  GMFMenuButton(
                    iconData: Icons.search,
                    onPressed: () {},
                  ),
                  const SizedBox(width: 15),
                  GMFMenuButton(
                    iconData: Icons.notifications_none,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
