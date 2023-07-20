import 'package:chat/domain/models/chat/chat_model.dart';
import 'package:chat/domain/models/chat/chat_status_model.dart';
import 'package:chat/presentation/chats/widgets/chat_avatar.dart';
import 'package:chat/presentation/chats/widgets/last_message.dart';
import 'package:chat/presentation/chats/widgets/marks_widget/marks_widget.dart';
import 'package:chat/presentation/chats/widgets/unread_messages.dart';
import 'package:chat/presentation/chats/widgets/closed_chat.dart';
import 'package:chat/presentation/styles/color_styles.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ChatCard extends StatefulWidget {
  final ChatModel chat;
  final bool isSelected;
  final VoidCallback onTap;

  const ChatCard(
    this.chat, {
    Key? key,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  State<ChatCard> createState() => _ChatCardState();
}

class _ChatCardState extends State<ChatCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      alignment: Alignment.centerLeft,
      color: widget.isSelected ? ColorStyles.mainItemsColor : null,
      child: InkWell(
        onTap: widget.onTap,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(28, 12, 14, 0),
          child: Row(
            children: [
              ChatAvatar(
                image: widget.chat.userInfo.image,
                socialType: widget.chat.socialType,
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      widget.chat.userInfo.userName,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    MarksWidget(widget.chat.marks),
                    widget.chat.chatStatus.type == ChatStatusType.open
                        ? LastMessage(widget.chat.lastMessage)
                        : ClosedChat(widget.chat.chatStatus),
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      DateFormat('hh:mm').format(widget.chat.date),
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.6),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  if (widget.chat.unreadMessagesCount != 0)
                    UnreadMessages(widget.chat.unreadMessagesCount),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
