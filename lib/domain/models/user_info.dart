class UserInfo {
  final String image;
  final String userName;
  final int? license;

  UserInfo({
    required this.image,
    required this.userName,
    this.license,
  });
}
