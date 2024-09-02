import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gen/gen.dart';
import 'package:todo/product/service/firebase/auth_service.dart';

part 'app_event.dart';
part 'app_state.dart';

final class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc({required AuthService authService})
      : _authService = authService,
        super(
          authService.currentUser.isNotEmpty ? AppState.authenticated(authService.currentUser) : const AppState.unauthenticated(),
        ) {
    on<_AppUserChanged>(_onUserChanged);
    on<AppLogoutRequested>(_onLogoutRequested);

    _userSubscription = _authService.account.listen(
      (user) => add(_AppUserChanged(user)),
    );
  }

  final AuthService _authService;
  late final StreamSubscription<Account> _userSubscription;

  void _onUserChanged(_AppUserChanged event, Emitter<AppState> emit) {
    emit(
      event.account.isNotEmpty ? AppState.authenticated(event.account) : const AppState.unauthenticated(),
    );
  }

  void _onLogoutRequested(AppLogoutRequested event, Emitter<AppState> emit) {
    unawaited(_authService.logOut());
  }

  @override
  Future<void> close() {
    _userSubscription.cancel();
    return super.close();
  }
}
