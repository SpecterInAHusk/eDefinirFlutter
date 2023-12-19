import 'package:flutter/material.dart';

class Apresentation extends StatelessWidget{
  const Apresentation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Pagina de Apresentação"),
            ElevatedButton(onPressed: () => {Navigator.pushNamed(context, '/home')}, child: const Text("Acesse aqui"))
          ],
        ),
      ),
    );
  }
  
}