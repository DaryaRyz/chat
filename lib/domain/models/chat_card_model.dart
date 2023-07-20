import 'package:chat/domain/models/chat_status.dart';
import 'package:chat/domain/models/chat_last_message.dart';
import 'package:flutter/material.dart';

enum SocialType { whatsApp, avito, vk }


class ChatCardModel {
  final String id;
  final String image;
  final String userName;
  final DateTime date;
  final SocialType socialType;
  final List<MarkModel>? marks;
  final LastMessageModel? lastMessage;
  final ChatStatus chatStatus;
  final int unreadMessagesCount;

  ChatCardModel({
    required this.id,
    required this.image,
    required this.userName,
    required this.socialType,
    this.marks,
    this.lastMessage,
    required this.date,
    required this.chatStatus,
    required this.unreadMessagesCount,
  });
}

class MarkModel {
  final String title;
  final Color color;

  MarkModel({
    required this.title,
    required this.color,
  });
}
