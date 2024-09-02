import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:gen/gen.dart';
import 'package:todo/product/service/model/message.dart';
import 'package:todo/product/utility/enums/collection_enums.dart';
import 'package:todo/product/utility/extensions/list_extensions.dart';

final class ChatService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseStorage _storage = FirebaseStorage.instance;

  Future<String?> getLastMessage(String chatRoomId) async {
    final querySnapshot = await CollectionEnums.chats.collection
        .doc(chatRoomId)
        .collection(CollectionEnums.messages.reference)
        .orderBy(CollectionEnums.timestamp.reference, descending: true)
        .limit(1)
        .get();

    return querySnapshot.docs.isNotEmpty ? querySnapshot.docs.first['message'] as String : null;
  }

  Stream<List<Account>> getUsersStream() {
    return CollectionEnums.users.collection.snapshots().map(
      (snapshot) {
        return snapshot.docs.map((doc) {
          final data = doc.data();
          return Account(
            uid: data['uid'] as String,
            email: data['email'] as String,
            fullName: data['fullName'] as String,
          );
        }).toList();
      },
    );
  }

  Future<void> markMessageAsSeen(String chatRoomId, String messageId) async {
    try {
      await CollectionEnums.chatRooms.collection
          .doc(chatRoomId)
          .collection(
            CollectionEnums.messages.reference,
          )
          .doc(messageId)
          .update({
        CollectionEnums.seen.reference: true,
      });
    } catch (e) {
      throw Exception('Error marking message as seen: $e');
    }
  }

  Future<void> sendMessage(String receiverId, String message, {String? imagePath}) async {
    final currentUserId = _auth.currentUser!.uid;
    final currentUserEmail = _auth.currentUser!.email!;
    final timestamp = Timestamp.now();

    String? imageUrl;
    if (imagePath != null) imageUrl = await _uploadImage(imagePath);

    final newMessage = Message(
      senderId: currentUserId,
      senderEmail: currentUserEmail,
      receiverId: receiverId,
      message: message,
      timestamp: timestamp,
      image: imageUrl,
      seen: false,
    );

    try {
      await CollectionEnums.chatRooms.collection
          .doc(
            [currentUserId, receiverId].generateChatRoomId,
          )
          .collection(CollectionEnums.messages.reference)
          .add(newMessage.toMap());
    } catch (e) {
      throw Exception('Error sending message: $e');
    }
  }

  Stream<QuerySnapshot> getMessages(String userId, String otherUserId) {
    return CollectionEnums.chatRooms.collection
        .doc([userId, otherUserId].generateChatRoomId)
        .collection(CollectionEnums.messages.reference)
        .orderBy(CollectionEnums.timestamp.reference)
        .snapshots();
  }

  Future<String> _uploadImage(String imagePath) async {
    final imageFile = File(imagePath);

    if (!imageFile.existsSync()) throw Exception('Image file does not exist');

    final fileName = imagePath.split('/').last;
    final storageReference = _storage.ref().child('${CollectionEnums.chatImages.reference}/$fileName');
    final uploadTask = storageReference.putFile(imageFile);

    try {
      final taskSnapshot = await uploadTask;
      return await taskSnapshot.ref.getDownloadURL();
    } catch (e) {
      throw Exception('Error uploading image: $e');
    }
  }
}
