part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.loadMessages(String receiverId, String senderId) = _LoadMessages;
  const factory ChatEvent.sendMessage(
    String receiverId,
    String message,
    String? image,
  ) = _SendMessage;
  const factory ChatEvent.markMessageAsSeen(
    String chatRoomId,
    String messageId,
  ) = _MarkMessageAsSeen;
}
