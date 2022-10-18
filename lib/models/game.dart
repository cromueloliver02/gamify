import 'game_image.dart';

class Game {
  final String title;
  final GameImage coverImage;
  final String description;
  final String studio;
  final List<GameImage>? images;

  Game({
    required this.title,
    required this.coverImage,
    required this.description,
    required this.studio,
    this.images,
  });
}
