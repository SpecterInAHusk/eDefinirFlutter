import 'dart:js';

import 'package:edefinir/view/pages/apresentacao.dart';
import 'package:edefinir/view/pages/diseases/add_disease.dart';
import 'package:edefinir/view/pages/home.dart';
import 'package:edefinir/view/pages/login.dart';
import 'package:edefinir/view/pages/diseases/details_disease.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:go_router/go_router.dart';
import 'firebase_options.dart';

final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const Apresentacao(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => Home(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => Login(),
    ),
    GoRoute(
      path: '/doenca',
      builder: (context, state) => const DetailsDisease(),
    ),
    GoRoute(
      path: '/add',
      builder: (context, state) => AddDisease(),
    ),
  ]
);

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
    return MaterialApp.router(
      title: 'eDefinir',
      routerConfig: _router,
    );
  }
}