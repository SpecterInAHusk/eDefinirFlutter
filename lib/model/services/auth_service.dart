import 'package:firebase_auth/firebase_auth.dart';
import 'package:localstorage/localstorage.dart';

class AuthService{
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  LocalStorage local = LocalStorage("local");

  Future<UserCredential>signin(email, password){
    return _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
  }

  Future<void> siginout(){
    return _firebaseAuth.signOut();
  }

  getUser(){
    return _firebaseAuth.currentUser;
  }
}