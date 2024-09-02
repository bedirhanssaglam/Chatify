import 'package:cloud_firestore/cloud_firestore.dart';

enum CollectionEnums {
  chats('chats'),
  chatRooms('chat_rooms'),
  messages('messages'),
  users('Users'),
  timestamp('timestamp'),
  seen('seen'),
  chatImages('chat_images');

  const CollectionEnums(this.reference);
  final String reference;

  CollectionReference<Map<String, dynamic>> get collection => FirebaseFirestore.instance.collection(reference);
}
