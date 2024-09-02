import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gen/gen.dart';
import 'package:todo/product/service/firebase/chat_service.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

final class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final ChatService chatService;

  HomeBloc({required this.chatService}) : super(const HomeState.initial()) {
    on<_FetchUsers>((event, emit) async {
      emit(const HomeState.loading());
      await emit.forEach(
        chatService.getUsersStream(),
        onData: (users) => HomeState.loaded(users),
        onError: (error, stackTrace) {
          return HomeState.error(error.toString());
        },
      );
    });
  }
}
