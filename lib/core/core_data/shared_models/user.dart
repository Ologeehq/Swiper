import 'package:equatable/equatable.dart';
import 'package:swipar/core/core_data/enums.dart';

class User extends Equatable {
  final UserType type;

  User() : type = UserType.driver;

  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();
}
