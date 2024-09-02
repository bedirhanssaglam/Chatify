import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/feature/auth/login/bloc/login_event.dart';
import 'package:todo/feature/auth/login/bloc/login_state.dart';
import 'package:todo/product/service/exceptions/firebase_exceptions.dart';
import 'package:todo/product/service/firebase/auth_service.dart';

final class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({required this.authRepository}) : super(const LoginState()) {
    on<LoginRequested>(_onLoginRequested);
  }
  final AuthService authRepository;

  Future<void> _onLoginRequested(LoginRequested event, Emitter<LoginState> emit) async {
    emit(state.copyWith(status: LoginStatus.loading));

    try {
      await authRepository.logInWithEmailAndPassword(email: event.email, password: event.password);
      emit(state.copyWith(status: LoginStatus.success));
    } on LogInWithEmailAndPasswordFailure catch (e) {
      emit(state.copyWith(status: LoginStatus.error, errorMessage: e.message));
    }
  }
}
