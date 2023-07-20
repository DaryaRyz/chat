import 'package:chat/data/dto/chat_status_dto.dart';
import 'package:chat/data/dto/user_info_dto.dart';
import 'package:chat/domain/models/dialog/dialog_model.dart';

class DialogDto {
  final int id;
  final UserInfoDto userInfo;
  final ChatStatusDto chatStatus;

  DialogDto.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        userInfo = UserInfoDto.fromMap(map['userInfo']),
        chatStatus = ChatStatusDto.fromMap(map['chatStatus']);

  static DialogModel toModel(DialogDto dto) {
    return DialogModel(
      id: dto.id,
      userInfo: UserInfoDto.toModel(dto.userInfo),
      chatStatus: ChatStatusDto.toModel(dto.chatStatus),
    );
  }
}
