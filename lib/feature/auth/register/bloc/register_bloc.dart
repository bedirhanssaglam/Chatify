import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/product/service/firebase/auth_service.dart';

import 'register_event.dart';
import 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final AuthService authRepository;

  RegisterBloc({required this.authRepository}) : super(const RegisterState()) {
    on<RegisterRequested>(_onRegisterRequested);
  }

  Future<void> _onRegisterRequested(RegisterRequested event, Emitter<RegisterState> emit) async {
    emit(state.copyWith(status: RegisterStatus.loading));

    try {
      await authRepository.signUp(
        email: event.email,
        password: event.password,
        firstName: event.firstName,
        lastName: event.lastName,
      );
      emit(state.copyWith(status: RegisterStatus.success));
    } catch (e) {
      emit(state.copyWith(status: RegisterStatus.error, errorMessage: e.toString()));
    }
  }
}
