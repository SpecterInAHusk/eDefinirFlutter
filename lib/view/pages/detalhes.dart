import 'package:edefinir/model/entities/disease.dart';
import 'package:flutter/material.dart';

class Detalhes extends StatelessWidget{
  const Detalhes({super.key});

  @override
  Widget build(BuildContext context) {
    Disease disease = ModalRoute.of(context)!.settings.arguments as Disease;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(disease.name),
          ],
        ),
      ),
    );
  }
  
}