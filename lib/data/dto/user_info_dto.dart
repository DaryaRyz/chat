import 'package:chat/domain/models/user_info.dart';

class UserInfoDto {
  final String image;
  final String userName;
  final int? license;

  UserInfoDto.fromMap(Map<String, dynamic> map)
      : image = map['image'],
        userName = map['userName'],
        license = map['license'];

  static UserInfo toModel(UserInfoDto dto) {
    return UserInfo(
      image: dto.image,
      userName: dto.userName,
      license: dto.license,
    );
  }
}
