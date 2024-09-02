import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:todo/product/utility/enums/message_types.dart';

final class Message {
  final String senderId;
  final String senderEmail;
  final String receiverId;
  final String message;
  final String? image;
  final Timestamp timestamp;
  final bool seen;

  Message({
    required this.senderId,
    required this.senderEmail,
    required this.receiverId,
    this.image,
    required this.message,
    required this.timestamp,
    required this.seen,
  });

  factory Message.fromDocument(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return Message(
      receiverId: data['receiverId'] as String,
      senderEmail: data['senderEmail'] as String,
      senderId: data['senderId'] as String,
      message: data['message'] as String,
      image: data['image'] as String?,
      timestamp: data['timestamp'] as Timestamp,
      seen: data['seen'] as bool,
    );
  }

  MessageTypes get type => image != null ? MessageTypes.image : MessageTypes.text;

  Map<String, dynamic> toMap() => {
        'senderId': senderId,
        'senderEmail': senderEmail,
        'receiverId': receiverId,
        'message': message,
        'image': image,
        'timestamp': timestamp,
        'seen': seen,
      };
}
