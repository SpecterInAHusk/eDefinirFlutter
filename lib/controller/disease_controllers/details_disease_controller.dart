import 'package:edefinir/model/services/auth_service.dart';

class DetailsDiseaseController{
  AuthService authService = AuthService();
  
  bool isLogged(){
    if(authService.getUser() != null){
      return true;
    }
    return false;
  }
}