import 'package:app_delivery_ui/theme_and_state_management/domain/exception/auth_exception.dart';
import 'package:app_delivery_ui/theme_and_state_management/domain/models/user.dart';
import 'package:app_delivery_ui/theme_and_state_management/domain/repository/api_repository.dart';
import 'package:app_delivery_ui/theme_and_state_management/domain/response/login_response.dart';
import 'package:app_delivery_ui/theme_and_state_management/domain/request/login_request.dart';

class ApiRepositoryImpl extends ApiRepositoryInterface{
  @override
  Future<User> getUserFromTokem(String token) async {
    //! Aqui puedo hacer peticiones http
    // *** Aqui uno se tiene que autenticar al backend o su firebase. ("Http")

    await Future.delayed(const Duration(seconds: 3));
    if(token == 'AA111'){
      return User(
        name:  'Steve Jobs',
        username: 'SteveJobs',
        image: 'assets/avatar.png'
      );
    }else if(token == 'AA222'){
        return User(
        name:  'zinedine',
        username: 'zinedine123',
        image: 'assets/b1.png'
      );
    }
    throw AuthExeption();
  }

  @override
  Future<LoginResponse> login(LoginRequest login) async {
    await Future.delayed(const Duration(seconds: 3));
    if(login.username == 'Steve' && login.password == 'Jobs' ){
      return LoginResponse(
        token: 'AA111',
        user: User(
          name:  'Steve Jobs',
          username: 'SteveJobs',
          image: 'assets/avatar.png'
        )
      );
    }

    if(login.username == 'zinedine' && login.password == 'erique' ){
      return LoginResponse(
        token: 'AA222',
        user: User(
          name:  'zinedine erique',
          username: 'zinedine123',
          image: 'assets/b1.png'
        )
      );
    }

    throw AuthExeption();

  }

  @override
  Future<void> logout(String token) async {
    print('Remove token from server');
  }

}