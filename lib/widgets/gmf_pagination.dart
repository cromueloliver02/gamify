import 'package:flutter/material.dart';

class GMFPagination extends StatelessWidget {
  final int count;
  final int currentIdx;

  const GMFPagination({
    super.key,
    required this.count,
    required this.currentIdx,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        count,
        (idx) => Container(
          width: 10,
          height: 10,
          margin: const EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            color: idx == currentIdx ? Colors.green : Colors.grey,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
