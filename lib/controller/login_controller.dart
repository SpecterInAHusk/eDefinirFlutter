import 'package:edefinir/model/services/auth_service.dart';

class LoginController{
  AuthService auth = AuthService();

  signin({email, password}){
    return auth.signin(email, password);
  }
}