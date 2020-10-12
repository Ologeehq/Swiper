import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

import '../../../../core/core_data/enums.dart';
import '../../../../core/core_presentation/base_view_model.dart';
import '../../services/login_service.dart';

class LoginViewModel extends BaseViewModel {
  final LoginService loginService;

  LoginViewModel({@required this.loginService});
  UserType userType;

  Future<bool> login(
    BuildContext context, {
    @required String phoneNumber,
    @required String password,
  }) async {
    setState(viewState: ViewState.busy);
    final result =
        await loginService(phoneNumber: phoneNumber, password: password);
    setState(viewState: ViewState.idle);

    return result.fold(
      (failure) {
        handleFailure(context, failure);
        return false;
      },
      (type) {
        this.userType = type;
        return true;
      },
    );
  }
}
