import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Home Page"),
            ElevatedButton(onPressed: () => {Navigator.pushNamed(context, '/login')}, child: const Text("Ir para Login"))
          ],
        ),
      ),
    );
  }

}