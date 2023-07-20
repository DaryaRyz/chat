import 'dart:async';

import 'package:chat/data/dto/chat_dto/chat_dto.dart';
import 'package:chat/data/mock_data/mock_chats.dart';
import 'package:chat/domain/models/chat/chat_model.dart';
import 'package:chat/domain/repository/i_chat_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IChatRepository)
class ChatRepository implements IChatRepository {
  @override
  FutureOr<List<ChatModel>> getChats() {
    const response = MockChats.value;
    return response.map((e) => ChatDto.toModel(ChatDto.fromMap(e))).toList();
  }
}
