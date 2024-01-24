
import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Home Page"),
            ElevatedButton(onPressed: () => {Navigator.pushNamed(context, '/login')}, child: const Text("Ir para Login")),
            Expanded(
              child: ListView(
              children: const [
                ExpansionTile(
                  title: Text("Doença 1"),
                  children: [
                    Text("Resumo da obesidade aqui pra vcs")
                  ],
                ),
                ExpansionTile(
                  title: Text("Doença 2"),
                  children: [
                    Text("Resumo da obesidade aqui pra vcs")
                  ],
                ),
                ExpansionTile(
                  title: Text("Doença 3"),
                  children: [
                    Text("Resumo da obesidade aqui pra vcs")
                  ],
                ),
              ],
            ),
            )
          ],
        ),
      ),
    );
  }

}