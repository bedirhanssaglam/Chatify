import 'package:equatable/equatable.dart';

sealed class RegisterEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

final class RegisterRequested extends RegisterEvent {
  RegisterRequested({
    required this.email,
    required this.password,
    required this.firstName,
    required this.lastName,
  });

  final String email;
  final String password;
  final String firstName;
  final String lastName;

  @override
  List<Object?> get props => [email, password, firstName, lastName];
}
