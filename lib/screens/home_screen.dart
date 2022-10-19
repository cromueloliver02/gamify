import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:gamify/widgets/gmf_pagination.dart';
import '../widgets/gmf_menu_button.dart';
import '../data/data.dart';

class HomScreen extends StatefulWidget {
  const HomScreen({super.key});

  @override
  State<HomScreen> createState() => _HomScreenState();
}

class _HomScreenState extends State<HomScreen> {
  var _currentIdx = 0;

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
              onPageChanged: (idx) => setState(() => _currentIdx = idx),
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
                featuredGames[_currentIdx].title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 40),
              ),
            ),
          ),
          Positioned(
            left: 30,
            top: 400,
            child: GMFPagination(
              count: featuredGames.length,
              currentIdx: _currentIdx,
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
