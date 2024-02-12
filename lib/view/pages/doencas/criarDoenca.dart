import 'package:flutter/material.dart';

class CriarDoenca extends StatelessWidget{
  const CriarDoenca({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          width: 400,
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Nome"
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Explicação"
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Resumo"
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Beneficios"
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Recomendação"
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Contra Indicação"
              ),
            ),
            const ElevatedButton(onPressed: null, child: Text("Criar"))
          ],
        ),
        )
      )
    );
  }

}