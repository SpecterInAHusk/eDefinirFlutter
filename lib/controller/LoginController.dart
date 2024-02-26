import 'package:edefinir/model/services/AuthService.dart';

class LoginController{
  AuthService auth = AuthService();

  signin({email, senha}){
    return auth.signin(email, senha);
  }
}