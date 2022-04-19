import 'package:app_delivery_ui/theme_and_state_management/domain/models/user.dart';

class LoginResponse {
  final String token;
  final User user;

  LoginResponse({
    required this.token,
    required this.user
  });
}