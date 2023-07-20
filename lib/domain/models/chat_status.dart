enum ChatStatusType { open, close }

class ChatStatus {
  final ChatStatusType status;
  final int? rate;

  ChatStatus({
    required this.status,
    this.rate,
  });
}
