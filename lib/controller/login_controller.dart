import 'package:edefinir/model/services/auth_service.dart';

class LoginController{
  AuthService authService = AuthService();

  signin({email, password}) async{
    await authService.signin(email, password);
    if(isLogged()){
      print("TA LOGADO");
    }
  }

  signout() async{
    await authService.siginout();
    if(!isLogged()){
      print("NAO TA LOGADO");
    }
  }

  bool isLogged(){
    if(authService.getUser() != null){
      return true;
    }
    return false;
  }
}