import 'package:chat/presentation/styles/color_styles.dart';
import 'package:flutter/material.dart';

class MoreButton extends StatelessWidget {
  const MoreButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 62,
      height: 62,
      child: Material(
        borderRadius: BorderRadius.circular(12),
        color: ColorStyles.mainItemsColor,
        child: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(12),
          child: const Icon(
            Icons.more_vert,
            size: 28,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
