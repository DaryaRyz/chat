import 'dart:async';
import 'package:chat/domain/models/chat/chat_model.dart';

abstract interface class IChatRepository {
  FutureOr<List<ChatModel>> getChats();
}
