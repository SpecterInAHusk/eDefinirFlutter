import 'package:edefinir/view/pages/apresentacao.dart';
import 'package:edefinir/view/pages/diseases/add_disease.dart';
import 'package:edefinir/view/pages/diseases/edit_disease.dart';
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
      name: "home",
      path: '/home',
      builder: (context, state) => Home(),
      routes: <RouteBase>[
        GoRoute(
          name: "add",
          path: 'add',
          builder: (context, state) => AddDisease(),
        ),
        GoRoute(
          name: "doenca",
          path: 'doenca',
          builder: (context, state) => DetailsDisease(),
          routes: <RouteBase>[
            GoRoute(
              name: "edit",
              path: 'edit',
              builder: (context, state) => EditDisease(),
            ),
          ]
        ),
      ]
    ),
    GoRoute(
      name: "login",
      path: '/login',
      builder: (context, state) => Login(),
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