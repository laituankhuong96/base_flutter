part of 'authentication_cubit.dart';

abstract class AuthenticationState extends Equatable {
  const AuthenticationState();
}

class AuthenticationInitial extends AuthenticationState {
  @override
  List<Object> get props => [];
}

class AuthenticationChecking extends AuthenticationState {
  @override
  List<Object> get props => [];
}

class SuccessfulAuthentication extends AuthenticationState {
  const SuccessfulAuthentication({required this.user, required this.token});

  final String token;
  final User user;

  @override
  List<Object> get props => [];
}

class AuthenticationFailed extends AuthenticationState {
  const AuthenticationFailed({required this.error});

  final String error;

  @override
  List<Object> get props => [];
}
