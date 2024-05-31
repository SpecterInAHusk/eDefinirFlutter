import 'package:edefinir/model/services/auth_service.dart';

class CustomDrawerController{

  AuthService authService = AuthService();

  bool isLogged(){    
    if(authService.getUser() != null){
      return true;
    }
    return false;
  }

  void logout(){
    authService.siginout();
  }

}