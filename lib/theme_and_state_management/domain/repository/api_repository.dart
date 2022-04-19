import 'package:app_delivery_ui/theme_and_state_management/domain/request/login_request.dart';
import 'package:app_delivery_ui/theme_and_state_management/domain/response/login_response.dart';

import '../models/user.dart';

abstract class ApiRepositoryInterface {

  Future<User> getUserFromTokem(String token);
  Future<LoginResponse> login(LoginRequest login);
  Future<void> logout(String token);
}