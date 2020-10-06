import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swipar/bloc/signup/signup_event.dart';
import 'package:swipar/bloc/signup/signup_state.dart';
import 'package:swipar/repositories/userRepository.dart';
import 'package:swipar/core/core_presentation/validators.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  final UserRepository _userRepository;

  SignupBloc({UserRepository userRepository})
      : _userRepository = userRepository,
        super(SignupState.initial());

  @override
  Stream<SignupState> mapEventToState(SignupEvent event) async* {
    if (event is SignupEmailChanged) {
      yield* _mapSignupEmailChangeToState(event.email);
    } else if (event is SignupPasswordChanged) {
      yield* _mapSignupPasswordChangeToState(event.password);
    } else if (event is SignupSubmitted) {
      yield* _mapSignupSubmittedToState(
          email: event.email, password: event.password);
    }
  }

  Stream<SignupState> _mapSignupEmailChangeToState(String email) async* {
    yield state.update(isEmailValid: Validators.isValidEmail(email));
  }

  Stream<SignupState> _mapSignupPasswordChangeToState(String password) async* {
    yield state.update(isPasswordValid: Validators.isValidPassword(password));
  }

  Stream<SignupState> _mapSignupSubmittedToState(
      {String email, String password}) async* {
    yield SignupState.loading();
    try {
      await _userRepository.signUp(email, password);
      yield SignupState.success();
    } catch (error) {
      print(error);
      yield SignupState.failure();
    }
  }
}