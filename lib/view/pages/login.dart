import 'package:flutter/material.dart';

class LogIn extends StatelessWidget{
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          width: 400,
          height: 200,
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Usuario"
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Senha"
              ),
            ),
            const ElevatedButton(onPressed: null, child: Text("Entrar"))
          ],
        ),
        )
      )
    );
  }
}