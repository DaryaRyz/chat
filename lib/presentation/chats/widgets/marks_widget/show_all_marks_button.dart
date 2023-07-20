import 'package:chat/presentation/styles/color_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowAllMarksButton extends StatelessWidget {
  final bool isShowAllMarks;
  final VoidCallback onChange;
  final int markCount;

  const ShowAllMarksButton({
    Key? key,
    required this.isShowAllMarks,
    required this.onChange,
    required this.markCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 19,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: ColorStyles.fourthMarkColor,
        borderRadius: BorderRadius.circular(52),
      ),
      child: TextButton(
        onPressed: onChange,
        style: TextButton.styleFrom(
          padding: _paddingHandler(isShowAllMarks),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(52)),
        ),
        child: Row(
          children: [
            Text(
              !isShowAllMarks ? 'еще $markCount' : 'Скрыть',
              style: const TextStyle(
                //TODO styles
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
            if (!isShowAllMarks)
              const Icon(
                size: 15,
                CupertinoIcons.forward,
                color: Colors.white,
              ),
          ],
        ),
      ),
    );
  }

  EdgeInsets _paddingHandler(bool isShow) {
    if (isShow) {
      return const EdgeInsets.symmetric(horizontal: 7);
    }
    return const EdgeInsets.only(left: 7);
  }
}
