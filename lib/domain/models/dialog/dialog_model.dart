import 'package:chat/domain/models/chat/chat_status_model.dart';
import 'package:chat/domain/models/user_info.dart';

class DialogModel {
  final int id;
  final UserInfo userInfo;
  final ChatStatusModel chatStatus;

  DialogModel({
    required this.id,
    required this.userInfo,
    required this.chatStatus,
  });
}
