

import 'package:chat/presentation/styles/color_styles.dart';
import 'package:flutter/material.dart';

class UnreadMessages extends StatelessWidget {
  final int count;

  const UnreadMessages(this.count, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: ColorStyles.mainItemsColor,
      ),
      child: Text(
        count.toString(),
        style: const TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}