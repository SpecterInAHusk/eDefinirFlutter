import 'package:edefinir/controller/login_controller.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Login extends StatefulWidget{

  LoginController controller = LoginController();

  Login({super.key});
  
  @override
  State<StatefulWidget> createState() => _LoginState();
}

class _LoginState extends State<Login>{

  final _formKey = GlobalKey<FormState>();

  String? email;
  String? senha;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          width: 800,
          height: 400,
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Email"
                  ),
                  validator: (value) {
                    if(value == null || value.isEmpty){
                      return 'Nome vazio';
                    }
                    email = value;
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Senha"
                  ),
                  validator: (value) {
                    if(value == null || value.isEmpty){
                      return 'Nome vazio';
                    }
                    senha = value;
                    return null;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: ElevatedButton(
                    onPressed: () {
                      if(_formKey.currentState!.validate()){
                        widget.controller.signin(
                          email: email,
                          password: senha
                        );
                      }
                    }, 
                    child: const Text("Login"))
                ),
                ElevatedButton(
                    onPressed: () {
                      widget.controller.signout();
                    },
                    child: const Text("Logout"))
              ],
            )
          )
        )
      )
    );
  }

}