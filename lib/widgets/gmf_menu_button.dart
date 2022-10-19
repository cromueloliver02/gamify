import 'package:flutter/material.dart';

class GMFMenuButton extends StatelessWidget {
  final IconData iconData;
  final VoidCallback onPressed;

  const GMFMenuButton({
    super.key,
    required this.iconData,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: onPressed,
        child: Icon(
          iconData,
          color: Colors.white,
          size: 30,
        ),
      );
}
