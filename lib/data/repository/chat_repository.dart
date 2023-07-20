import 'dart:async';

import 'package:chat/data/dto/chat_dto.dart';
import 'package:chat/data/mock_data/mock_chats.dart';
import 'package:chat/domain/models/chat_card_model.dart';
import 'package:chat/domain/repository/i_chat_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IChatRepository)
class ChatRepository implements IChatRepository {
  @override
  FutureOr<List<ChatCardModel>> getChats() {
    return MockChats.value.map((e) => ChatDto.toModel(ChatDto.fromMap(e))).toList();
  }
}
