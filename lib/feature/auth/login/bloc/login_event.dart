import 'package:equatable/equatable.dart';

sealed class LoginEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

final class LoginRequested extends LoginEvent {
  LoginRequested({required this.email, required this.password});

  final String email;
  final String password;

  @override
  List<Object?> get props => [email, password];
}
