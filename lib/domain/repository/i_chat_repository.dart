import 'dart:async';

import 'package:chat/domain/models/chat_card_model.dart';

abstract interface class IChatRepository {
  FutureOr<List<ChatCardModel>> getChats();
}
