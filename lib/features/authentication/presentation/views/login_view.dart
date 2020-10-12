import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../../../core/core_data/enums.dart';
import '../../../../core/core_presentation/base_view_model.dart';
import '../../../../core/core_presentation/styles.dart' as Style;
import '../../../../dependency_injection.dart';
import '../../../../views/utilities/constants.dart';
import '../../../../views/widgets/no_border_radius_textfield.dart';
import '../../../../views/widgets/theme_long_button.dart';
import '../view_models/login_view_model.dart';
import 'authentication_action_view.dart';
import 'reset_password_view.dart';

class LoginView extends StatelessWidget {
  final TextEditingController _phoneNumber = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    kScreenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 50, 30, 20),
          child: ChangeNotifierProvider(
            create: (BuildContext context) => dinj<LoginViewModel>(),
            child: Builder(builder: (context) {
              //View model access
              final loginViewModel = Provider.of<LoginViewModel>(context);
              //View model access (without listener)
              final loginViewModelX =
                  Provider.of<LoginViewModel>(context, listen: false);

              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  IconButton(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                      bottom: 10,
                    ),
                    child: Text(
                      "Sign in",
                      textAlign: TextAlign.center,
                      style: Style.headingTextStyle,
                    ),
                  ),
                  SvgPicture.asset(
                    "assets/hello.svg",
                    height: kScreenSize.height * 0.283,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  NoBorderRadiusTextField(
                    label: "Phone Number",
                    controller: _phoneNumber,
                  ),
                  NoBorderRadiusTextField(
                    label: "Password",
                    controller: _password,
                  ),

                  //Login Button
                  loginViewModel.viewState == ViewState.busy
                      ? Center(
                          child: CircularProgressIndicator(),
                        )
                      : LongButton(
                          color: Style.themeBlue,
                          onPressed: () async {
                            final loggedIn = await loginViewModelX.login(
                              context,
                              phoneNumber: _phoneNumber.text.trim(),
                              password: _password.text.trim(),
                            );

                            if (loggedIn)
                              Navigator.of(context).pushNamed(
                                  loginViewModel.userType == UserType.driver
                                      ? '/driver'
                                      : '/rider');
                          },
                          label: "Login",
                          labelColor: Colors.white,
                          shadow: true,
                        ),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => ResetPasswordView(),
                          ));
                    },
                    child: Text(
                      "Forgot password?",
                      textAlign: TextAlign.center,
                      style: Style.captionTextStyle.copyWith(
                        color: Style.themeBlue,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        text: "Don\'t have an account? ",
                        style: Style.captionTextStyle.copyWith(
                          color: Style.themeBlack,
                        ),
                        children: [
                          TextSpan(
                              text: "Create here",
                              style: Style.captionTextStyle.copyWith(
                                color: Style.themeGreen,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.pushReplacement(
                                      context,
                                      CupertinoPageRoute(
                                        builder: (context) =>
                                            SelectRegisterTypeView(),
                                      ));
                                }),
                        ]),
                  ),
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}
