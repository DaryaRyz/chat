import 'package:chat/domain/models/chat/chat_model.dart';
import 'package:chat/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class ChatAvatar extends StatelessWidget {
  final String image;
  final SocialType socialType;

  const ChatAvatar({
    Key? key,
    required this.image,
    required this.socialType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 66,
      height: 66,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              image,
              width: 61,
              height: 61,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SizedBox(
              width: 26,
              height: 26,
              child: _getSocialIcon(socialType),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getSocialIcon(SocialType type) {
    switch (type) {
      case SocialType.whatsApp:
        return Assets.icons.whatsApp.image();
      case SocialType.avito:
        return Assets.icons.avito.image();
      case SocialType.vk:
        return Assets.icons.vkontakte.image();
    }
  }
}
