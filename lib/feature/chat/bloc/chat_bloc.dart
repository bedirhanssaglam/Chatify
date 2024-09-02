import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/product/service/firebase/chat_service.dart';

part 'chat_bloc.freezed.dart';
part 'chat_event.dart';
part 'chat_state.dart';

final class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc(this._chatService) : super(ChatState.initial()) {
    on<_LoadMessages>(_onLoadMessages);
    on<_SendMessage>(_onSendMessage);
    on<_MarkMessageAsSeen>(_onMarkMessageAsSeen);
  }

  final ChatService _chatService;

  Future<void> _onLoadMessages(_LoadMessages event, Emitter<ChatState> emit) async {
    try {
      emit(state.copyWith(isLoading: true));
      final stream = _chatService.getMessages(event.receiverId, event.senderId);
      await emit.forEach(
        stream,
        onData: (QuerySnapshot snapshot) {
          return state.copyWith(
            messages: snapshot.docs,
            isLoading: false,
          );
        },
      );
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
    }
  }

  Future<void> _onSendMessage(_SendMessage event, Emitter<ChatState> emit) async {
    try {
      await _chatService.sendMessage(
        event.receiverId,
        event.message,
        imagePath: event.image,
      );
    } catch (e) {
      emit(state.copyWith(errorMessage: e.toString()));
    }
  }

  Future<void> _onMarkMessageAsSeen(_MarkMessageAsSeen event, Emitter<ChatState> emit) async {
    try {
      await _chatService.markMessageAsSeen(
        event.chatRoomId,
        event.messageId,
      );
    } catch (e) {
      emit(state.copyWith(errorMessage: e.toString()));
    }
  }
}
