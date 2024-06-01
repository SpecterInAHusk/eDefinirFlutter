import 'package:edefinir/view/pages/apresentacao.dart';
import 'package:edefinir/view/pages/diseases/create_disease.dart';
import 'package:edefinir/view/pages/home.dart';
import 'package:edefinir/view/pages/login.dart';
import 'package:edefinir/view/pages/diseases/details_disease.dart';
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
      title: "eDefinir",
      initialRoute: '/',
      routes: {
        '/': (context) => const Apresentacao(),
        '/home': (context) => Home(),
        '/login': (context) =>  Login(),
        '/doenca': (context) => const DetailsDisease(),
        '/add': (context) => CreateDisease()
      },  
    );
  }
}