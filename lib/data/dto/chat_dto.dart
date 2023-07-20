import 'package:chat/data/dto/chat_status_dto.dart';
import 'package:chat/data/dto/last_message_dto.dart';
import 'package:chat/domain/models/chat_card_model.dart';
import 'package:chat/presentation/styles/color_styles.dart';

class ChatDto {
  final String id;
  final String image;
  final String userName;
  final String socialType;
  final String date;
  final List? marks;
  final LastMessageDto? lastMessage;
  final ChatStatusDto chatStatus;
  final int unreadMessagesCount;

  ChatDto.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        image = map['image'],
        userName = map['userName'],
        socialType = map['socialType'],
        date = map['date'],
        marks =
            map['marks'] is List ? map['marks'].map((e) => MarkModelDto.fromMap(e)).toList() : null,
        lastMessage =
            map['lastMessage'] != null ? LastMessageDto.fromMap(map['lastMessage']) : null,
        chatStatus = ChatStatusDto.fromMap(map['chatStatus']),
        unreadMessagesCount = map['unreadMessagesCount'];

  static ChatCardModel toModel(ChatDto dto) {
    return ChatCardModel(
      id: dto.id,
      image: dto.image,
      userName: dto.userName,
      date: DateTime.parse(dto.date),
      socialType: SocialType.values.byName(dto.socialType),
      chatStatus: ChatStatusDto.toModel(dto.chatStatus),
      unreadMessagesCount: dto.unreadMessagesCount,
      marks: dto.marks?.map((e) => MarkModelDto.toModel(e)).toList(),
      lastMessage: dto.lastMessage != null ? LastMessageDto.toModel(dto.lastMessage!) : null,
    );
  }
}

class MarkModelDto {
  final String title;
  final String color;

  MarkModelDto.fromMap(Map<String, dynamic> map)
      : title = map['name'],
        color = map['color'];

  static MarkModel toModel(MarkModelDto dto) {
    return MarkModel(
      title: dto.title,
      color: HexColor.fromHex(dto.color),
    );
  }
}
