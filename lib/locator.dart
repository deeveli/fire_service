import 'package:fire_service/repository/auth_repo.dart';
import 'package:fire_service/view_controller/user_controller.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setupServices() {
  locator.registerSingleton<AuthRepo>(AuthRepo());
  // locator.registerSingleton<UserController>(UserController());
}
