import 'package:chat/domain/models/chat_last_message.dart';
import 'package:chat/gen/assets.gen.dart';
import 'package:chat/presentation/widgets/app_network_image.dart';
import 'package:flutter/material.dart';

class LastMessage extends StatelessWidget {
  final LastMessageModel? lastMessage;

  const LastMessage(this.lastMessage, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (lastMessage != null) {
      return LayoutBuilder(
        builder: (context, size) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (lastMessage!.status == LastMessageStatus.error && size.maxWidth > 30) ...[
                Assets.icons.error.image(width: 15),
                const SizedBox(width: 7),
              ],
              Flexible(
                child: Text(
                  lastMessage!.text ?? '',
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              if (lastMessage!.image != null && size.maxWidth > 250) ...[
                const SizedBox(width: 7),
                AppNetworkImage(
                  lastMessage!.image,
                  width: 26,
                  height: 26,
                  borderRadius: BorderRadius.circular(4),
                ),
                const SizedBox(width: 5),
              ],
            ],
          );
        },
      );
    }
    return const SizedBox();
  }
}
