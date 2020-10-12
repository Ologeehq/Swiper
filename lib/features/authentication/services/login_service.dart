import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

import '../../../core/core_data/enums.dart';
import '../../../core/core_data/shared_repositories/session_manager.dart';
import '../../../core/core_presentation/failures.dart';
import '../data/authentication_repository.dart';

class LoginService {
  final AuthenticationRepository authenticationRepository;
  final SessionManager sessionManager;

  LoginService({
    @required this.sessionManager,
    @required this.authenticationRepository,
  });

  Future<Either<Failure, UserType>> call({
    @required String phoneNumber,
    @required String password,
  }) async {
    final result = await authenticationRepository.login(
      phoneNumber: phoneNumber,
      password: password,
    );

    return result.fold(
      (failure) => Left(failure),
      (user) {
        sessionManager.initializeSession(user: user);
        return Right(user.type);
      },
    );
  }
}
