import 'package:meta/meta.dart';

import '../shared_models/user.dart';

class SessionManager {
  User _currentUser;
  bool sessionIsOpen;

  User get userInSession => _currentUser;

  void initializeSession({@required User user}) {
    _currentUser = user;
    sessionIsOpen = true;
  }

  void closeSession() {
    _currentUser = null;
    sessionIsOpen = false;
  }
}
