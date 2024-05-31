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
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool error = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          width: 400,
          height: 400,
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if(error)
                  const Text("Email ou Senha Incorretos", style: TextStyle(color: Colors.red)),
                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    hintText: "Email"
                  ),
                  validator: (email) {
                    if(email == null || email.isEmpty){
                      return 'Insira um email';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _passwordController,
                  decoration: const InputDecoration(
                    hintText: "Senha"
                  ),
                  obscureText: true,
                  validator: (password) {
                    if(password == null || password.isEmpty){
                      return 'Insira uma Senha';
                    }else if(password.length < 6){
                      return 'Senha muito curta';
                    }
                    return null;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: ElevatedButton(
                    onPressed: () async {
                      if(_formKey.currentState!.validate()){
                        bool noError = await widget.controller.signin(
                          email: _emailController.text,
                          password: _passwordController.text
                        );
                        if(noError){
                          Navigator.popUntil(context, ModalRoute.withName('/home'));
                        }else{
                          _passwordController.clear();
                          setState(() {
                            error = true;
                          });
                        }
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