import 'package:edefinir/model/services/auth_service.dart';

class EditController{
  AuthService authService = AuthService();
  
  bool isLogged(){
    if(authService.getUser() != null){
      return true;
    }
    return false;
  }
}