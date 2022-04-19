import 'package:app_delivery_ui/theme_and_state_management/domain/models/user.dart';

abstract class LocalRepositoryInterface{

  Future<String> getToken();
  Future<String> saveToken(String token );
  Future<void> clearAllData();
  Future<User> saveUser( User user );
  Future<User> getUser();
  Future<void> saveDarkMode(bool darkMode);
  Future<bool> isDarkMode();

}