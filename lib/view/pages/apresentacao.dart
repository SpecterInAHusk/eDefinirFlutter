import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Apresentacao extends StatelessWidget{
  const Apresentacao({super.key});

//TODO usar TabPageSelector para mostrar os slides de apresentação
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Pagina de Apresentação"),
            ElevatedButton(onPressed: () => context.go('/home'), child: const Text("Acesse aqui"))
          ],
        ),
      ),
    );
  }
  
}