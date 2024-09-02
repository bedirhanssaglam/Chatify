part of 'app_bloc.dart';

enum AppStatus {
  authenticated,
  unauthenticated,
}

final class AppState extends Equatable {
  const AppState._({
    required this.status,
    this.account = Account.empty,
  });

  const AppState.authenticated(Account user) : this._(status: AppStatus.authenticated, account: user);

  const AppState.unauthenticated() : this._(status: AppStatus.unauthenticated);

  final AppStatus status;
  final Account account;

  @override
  List<Object> get props => [status, account];
}
