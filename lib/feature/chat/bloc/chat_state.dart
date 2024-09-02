part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState({
    required List<DocumentSnapshot>? messages,
    required bool isLoading,
    required String? errorMessage,
  }) = _ChatState;

  factory ChatState.initial() => const ChatState(
        messages: null,
        isLoading: false,
        errorMessage: null,
      );
}
