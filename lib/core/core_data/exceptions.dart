import 'package:meta/meta.dart';

class ServerException implements Exception {}

class InputException implements Exception {
  final String errorMessage;

  InputException({@required this.errorMessage});
}

class NetworkException implements Exception {}

class UnknownException implements Exception {}
