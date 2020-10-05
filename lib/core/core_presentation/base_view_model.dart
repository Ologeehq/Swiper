import 'package:flutter/foundation.dart';

enum ViewState { busy, idle }

class BaseViewModel extends ChangeNotifier {
  ViewState viewState;
  String message;

  void setState({ViewState viewState, String message}) {
    this.viewState = viewState;
    this.message = message;
    notifyListeners();
  }
}
