import 'package:chat/domain/models/chat_status.dart';

class ChatStatusDto {
  final String status;
  final int? rate;

  ChatStatusDto.fromMap(Map<String, dynamic> map)
      : status = map['status'],
        rate = map['rate'];

  static ChatStatus toModel(ChatStatusDto dto) {
    return ChatStatus(
      status: ChatStatusType.values.byName(dto.status),
      rate: dto.rate,
    );
  }
}
