import 'package:edefinir/controller/doencas/AdicionarDoencaController.dart';
import 'package:edefinir/view/pages/apresentacao.dart';
import 'package:edefinir/view/pages/doencas/AdicionarDoenca.dart';
import 'package:edefinir/view/pages/home.dart';
import 'package:edefinir/view/pages/login.dart';
import 'package:edefinir/view/pages/detalhes.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Scaffold(
        body: Center(
          child: Apresentacao(),
        ),
      ),
      routes: {
        '/home': (context) => const Home(),
        '/login': (context) =>  Login(),
        '/doenca': (context) => AdicionarDoenca(controller: AdicionarDoencaController()),
      },
    );
  }
}
