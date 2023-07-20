import 'package:chat/domain/models/chat/chat_last_message.dart';
import 'package:chat/domain/models/chat/chat_status_model.dart';
import 'package:chat/domain/models/user_info.dart';
import 'package:flutter/material.dart';

enum SocialType { whatsApp, avito, vk }


class ChatModel {
  final int id;
  final UserInfo userInfo;
  final DateTime date;
  final SocialType socialType;
  final List<MarkModel>? marks;
  final LastMessageModel? lastMessage;
  final ChatStatusModel chatStatus;
  final int unreadMessagesCount;

  ChatModel({
    required this.id,
    required this.userInfo,
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
