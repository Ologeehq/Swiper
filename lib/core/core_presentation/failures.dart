import 'package:meta/meta.dart';

abstract class Failure {}

class ServerFailure implements Failure {}

class InputFailure implements Failure {
  final String errorMessage;

  InputFailure({@required this.errorMessage});
}

class NetworkFailure implements Failure {}

class UnknownFailure implements Failure {}
