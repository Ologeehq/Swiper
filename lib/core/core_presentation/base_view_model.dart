import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'failures.dart';
import 'indicators.dart';

enum ViewState { busy, idle }

class BaseViewModel extends ChangeNotifier {
  ViewState viewState;
  String message;

  void setState({ViewState viewState, String message}) {
    this.viewState = viewState;
    this.message = message;
    notifyListeners();
  }

  handleFailure(BuildContext context, Failure failure) {
    switch (failure.runtimeType) {
      case InputFailure:
        Indicator.snackBar(
          context,
          (failure as InputFailure).errorMessage,
          SnackBarType.info,
        );
        break;
      case ServerFailure:
        Indicator.snackBar(
          context,
          serverFailureMessage,
          SnackBarType.error,
        );
        break;

      case NetworkFailure:
        Indicator.snackBar(
          context,
          networkFailureMessage,
          SnackBarType.error,
        );
        break;
      default:
        Indicator.snackBar(
          context,
          'Unknown Error.',
        );
    }
  }
}

const serverFailureMessage = "Server error. Please try again.";

const networkFailureMessage = "Network Error. Please check your connection";
