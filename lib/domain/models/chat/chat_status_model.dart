enum ChatStatusType { open, close }

class ChatStatusModel {
  final ChatStatusType type;
  final int? rate;

  ChatStatusModel({
    required this.type,
    this.rate,
  });
}
