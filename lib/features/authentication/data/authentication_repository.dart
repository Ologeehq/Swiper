import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';

import '../../../core/core_data/shared_models/user.dart';
import '../../../core/core_presentation/failures.dart';

//!- Contract
abstract class AuthenticationRepository {
  Future<Either<Failure, User>> login({
    @required String phoneNumber,
    @required String password,
  });
}

//!- Implementation
class AuthenticationRepositoryImpl implements AuthenticationRepository {
  @override
  Future<Either<Failure, User>> login({
    @required String phoneNumber,
    @required String password,
  }) async {
    // TODO: implement login
    await Future.delayed(Duration(seconds: 3));
    if (password.contains('a') || password.contains('i')) {
      return Left(NetworkFailure());
    } else {
      return Right(User());
    }
  }
}
