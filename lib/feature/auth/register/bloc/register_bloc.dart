import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/feature/auth/register/bloc/register_event.dart';
import 'package:todo/feature/auth/register/bloc/register_state.dart';
import 'package:todo/product/service/firebase/auth_service.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc({required this.authRepository}) : super(const RegisterState()) {
    on<RegisterRequested>(_onRegisterRequested);
  }

  final AuthService authRepository;

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
