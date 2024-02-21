
import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  const Home({super.key});

//TODO estilizar barra superior
//TODO criar barra de pesquisa
//TODO menu lateral
//TODO estilizar corez
//TODO rotas para navegar para a página de detalhes

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar( 

      title: const Text("Home"),
    ),
    body: Column(
      children: [
        ElevatedButton(
          onPressed: () => {Navigator.pushNamed(context, '/login')},
          child: Text("Ir para Login"), //WARN esse botão é apenas para teste,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Card(
                child: ExpansionTile(
                  title: Text("Doença $index"),
                  initiallyExpanded: true,
                  maintainState: true,
                  expandedAlignment: Alignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Descrição da Doença $index"),
                    ),
                  ],
                  backgroundColor: const Color.fromARGB(255, 153, 164, 170),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  collapsedShape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
              );
            },
          ),
        ),
      ],
    ),
  );
}
}