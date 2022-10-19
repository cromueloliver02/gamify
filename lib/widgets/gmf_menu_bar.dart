import 'package:flutter/material.dart';
import 'gmf_menu_button.dart';

class GMFMenuBar extends StatelessWidget {
  const GMFMenuBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
