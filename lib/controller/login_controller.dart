import 'package:edefinir/model/services/auth_service.dart';

class LoginController{
  AuthService authService = AuthService();

  signin({email, password}) async{
    await authService.signin(email, password);
  }

  signout() async{
    await authService.siginout();
  }

  bool isLogged(){
    if(authService.getUser() != null){
      return true;
    }
    return false;
  }
}