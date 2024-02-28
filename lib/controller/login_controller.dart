import 'dart:async';

import 'package:edefinir/model/services/auth_service.dart';

class LoginController{
  
  final _errorController = StreamController<String>();
  AuthService authService = AuthService();

  Future<bool> signin({email, password}) async{
    bool noError = false;
    await authService.signin(email, password)
    .then((value) => {noError = true})
    .catchError((error) => {noError = false});
    return noError;
  }

  dispose(){
    _errorController.close();
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