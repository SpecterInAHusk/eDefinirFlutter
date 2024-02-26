import 'package:edefinir/controller/LoginController.dart';
import 'package:flutter/material.dart';

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
          width: 400,
          height: 200,
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
                          senha: senha
                        );
                      }
                    }, 
                    child: const Text("Criar"))
                ),
              ],
            )
          )
        )
      )
    );
  }

}