import 'package:chat/domain/models/chat/chat_status_model.dart';

class ChatStatusDto {
  final String status;
  final int? rate;

  ChatStatusDto.fromMap(Map<String, dynamic> map)
      : status = map['status'],
        rate = map['rate'];

  static ChatStatusModel toModel(ChatStatusDto dto) {
    return ChatStatusModel(
      type: ChatStatusType.values.byName(dto.status),
      rate: dto.rate,
    );
  }
}
