import 'package:get_it/get_it.dart';
import 'package:swipar/features/authentication/data/authentication_repository.dart';

import 'core/core_data/shared_repositories/session_manager.dart';
import 'features/authentication/presentation/view_models/login_view_model.dart';
import 'features/authentication/services/login_service.dart';

final dinj = GetIt.instance;

class AppDependencies {
  static void registerDependecies() {
    dinj.registerLazySingleton(() => SessionManager());
    _authenticationDependecies();
  }

//!- Authentication Dependencies
  static void _authenticationDependecies() {
    dinj.registerFactory(() => LoginViewModel(loginService: dinj()));

    dinj.registerLazySingleton(() => LoginService(
          authenticationRepository: dinj(),
          sessionManager: dinj(),
        ));

    dinj.registerLazySingleton<AuthenticationRepository>(
        () => AuthenticationRepositoryImpl());
  }
}
