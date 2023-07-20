import 'package:chat/domain/models/chat/chat_model.dart';
import 'package:chat/presentation/styles/color_styles.dart';
import 'package:flutter/material.dart';

class Mark extends StatelessWidget {
  final MarkModel mark;

  const Mark({
    Key? key,
    required this.mark,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      height: 19,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        color: mark.color,
        borderRadius: BorderRadius.circular(52),
      ),
      child: Center(
        child: Text(
          mark.title,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: ColorStyles.secondTextColor,
          ),
        ),
      ),
    );
  }
}
