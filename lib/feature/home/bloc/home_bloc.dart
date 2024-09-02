import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gen/gen.dart';
import 'package:todo/product/service/firebase/chat_service.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

final class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({required this.chatService}) : super(const HomeState.initial()) {
    on<_FetchUsers>(_onFetchUsers);
  }

  final ChatService chatService;

  Future<void> _onFetchUsers(_FetchUsers event, Emitter<HomeState> emit) async {
    emit(const HomeState.loading());
    await emit.forEach(
      chatService.getUsersStream(),
      onData: HomeState.loaded,
      onError: (error, stackTrace) {
        return HomeState.error(error.toString());
      },
    );
  }
}
