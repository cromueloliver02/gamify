import 'package:flutter/material.dart';
import '../widgets/gmf_featured_games_slider.dart';
import '../widgets/gmf_gradient_overlay.dart';
import '../widgets/gmf_pagination.dart';
import '../widgets/gmf_menu_bar.dart';
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
            child: GMFFeaturedGamesSlider(
              currentIdx: _currentIdx,
              featuredGames: featuredGames,
              onPageChanged: (idx) => setState(() => _currentIdx = idx),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: GMFGradientOverlay(
              width: screenSize.width,
              height: screenSize.height * 0.75,
              currentIdx: _currentIdx,
              featuredGames: featuredGames,
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
              width: screenSize.width,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const GMFMenuBar(),
            ),
          ),
        ],
      ),
    );
  }
}
