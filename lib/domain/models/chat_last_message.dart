enum LastMessageStatus { success, error }

class LastMessageModel {
  final String? text;
  final String? image;
  final LastMessageStatus status;

  LastMessageModel({
    this.text,
    this.image,
    required this.status,
  });
}
