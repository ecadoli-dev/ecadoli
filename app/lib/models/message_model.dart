class MessageModel {
  final String id;
  final String senderId;
  final String receiverId;
  final String text;
  final DateTime createdAt;
  final bool isRead;

  const MessageModel({
    required this.id,
    required this.senderId,
    required this.receiverId,
    required this.text,
    required this.createdAt,
    this.isRead = false,
  });
}