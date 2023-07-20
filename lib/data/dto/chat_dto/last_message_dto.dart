import 'package:chat/domain/models/chat/chat_last_message.dart';

class LastMessageDto {
  final String? text;
  final String? image;
  final String status;

  LastMessageDto.fromMap(Map<String, dynamic> map)
      : text = map['text'],
        image = map['image'],
        status = map['status'];

  static LastMessageModel toModel(LastMessageDto dto) {
    return LastMessageModel(
      text: dto.text,
      image: dto.image,
      status: LastMessageStatus.values.byName(dto.status),
    );
  }
}
