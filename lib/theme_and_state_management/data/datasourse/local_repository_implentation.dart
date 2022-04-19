import 'package:app_delivery_ui/theme_and_state_management/domain/models/user.dart';
import 'package:app_delivery_ui/theme_and_state_management/domain/repository/local_storage_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

const prefToken = 'TOKEM';
const prefUsername = 'USERNAME';
const prefName = 'NAME';
const prefImage = 'IMAGE';
const prefDarkMode = 'THEME_DARK';

class LocalRepositoryImpl extends LocalRepositoryInterface{


  @override
  Future<void> clearAllData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance(); // * es una instancia de singlenton
    sharedPreferences.clear();

  }

  @override
    Future<String> getToken() async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance(); // * es una instancia de singlenton
    return sharedPreferences.getString(prefToken)?? 'No tokem';
  }

  @override
  Future<String> saveToken(String token ) async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance(); // * es una instancia de singlenton
    sharedPreferences.setString(prefToken, token);
    return token;
  }


  @override
  Future<User> getUser() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance(); // * es una instancia de singlenton
    final name = sharedPreferences.getString(prefName)?? 'no name';
    final username = sharedPreferences.getString(prefUsername)?? 'no username';
    final image = sharedPreferences.getString(prefImage)?? 'no image';
    final user  = User(
      name: name,
      username: username,
      image: image
    );
    return user;
  }

  @override
  Future<User> saveUser(User user) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance(); // * es una instancia de singlenton
    sharedPreferences.setString( prefName , user.name);
    sharedPreferences.setString( prefUsername , user.username);
    sharedPreferences.setString( prefImage , user.image);
    return user;
  }

  @override
  Future<void> saveDarkMode(bool darkMode) async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance(); // * es una instancia de singlenton
    sharedPreferences.setBool(prefDarkMode, darkMode);
  }

  @override
  Future<bool> isDarkMode()  async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance(); // * es una instancia de singlenton
    return sharedPreferences.getBool(prefDarkMode)!;
  }
}

