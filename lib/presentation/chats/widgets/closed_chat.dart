import 'package:chat/domain/models/chat_status.dart';
import 'package:chat/presentation/styles/color_styles.dart';
import 'package:flutter/material.dart';

class ClosedChat extends StatelessWidget {
  final ChatStatus chatStatus;

  const ClosedChat(this.chatStatus, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, size) {
        return Row(
          children: [
            Flexible(
              child: Text(
                'Диалог закрыт',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            if (size.maxWidth > 250) ...[
              Text(
                ' | ',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                ),
              ),
              ...List.generate(
                chatStatus.rate ?? 0,
                (index) => const Icon(
                  Icons.star,
                  color: ColorStyles.yellowColor,
                ),
              ),
              ...List.generate(
                5 - (chatStatus.rate ?? 0),
                (index) => const Icon(
                  Icons.star,
                  color: ColorStyles.mainItemsColor,
                ),
              ),
            ],
          ],
        );
      },
    );
  }
}
