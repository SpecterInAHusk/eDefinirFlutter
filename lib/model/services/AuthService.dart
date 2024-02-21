import 'package:firebase_auth/firebase_auth.dart';
import 'package:localstorage/localstorage.dart';

class AuthService{
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  LocalStorage local = LocalStorage("local");

  AuthService(){
    _firebaseAuth.userChanges().listen((user) {
      if(user != null){
        local.setItem("user", user.uid);
      }else{
        local.setItem("user", null);
      }
    });
  }

  signin(email, password){
    return _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
  }

  siginout(){
    return _firebaseAuth.signOut();
  }

  getUser(){
    return local.getItem("user");
  }
}