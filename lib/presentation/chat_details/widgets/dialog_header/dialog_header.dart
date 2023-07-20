import 'dart:ui';
import 'package:chat/domain/models/dialog/dialog_model.dart';
import 'package:chat/presentation/chat_details/widgets/dialog_header/chat_status.dart';
import 'package:chat/presentation/chat_details/widgets/dialog_header/more_button.dart';
import 'package:chat/presentation/chat_details/widgets/dialog_header/user_info_card.dart';
import 'package:flutter/material.dart';

class DialogHeader extends StatelessWidget {
  final DialogModel dialog;

  const DialogHeader(
    this.dialog, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.6),
            border: Border(bottom: BorderSide(color: Colors.black.withOpacity(0.1))),
          ),
          child: Row(
            children: [
              UserInfoCard(
                dialog.userInfo,
                onTap: () {},
              ),
              const Spacer(),
              ChatStatus(dialog.chatStatus),
              const SizedBox(width: 33),
              const MoreButton(),
            ],
          ),
        ),
      ),
    );
  }
}
