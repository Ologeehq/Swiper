import 'package:equatable/equatable.dart';

abstract class SignupEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class SignupEmailChanged extends SignupEvent {
  final String email;

  SignupEmailChanged({this.email});

  @override
  List<Object> get props => [email];
}

class SignupPasswordChanged extends SignupEvent {
  final String password;

  SignupPasswordChanged({this.password});

  @override
  List<Object> get props => [password];
}

class SignupSubmitted extends SignupEvent {
  final String email;
  final String password;

  SignupSubmitted({this.email, this.password});

  @override
  List<Object> get props => [email, password];
}