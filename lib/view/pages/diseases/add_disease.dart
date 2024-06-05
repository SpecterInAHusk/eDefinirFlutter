
import 'package:edefinir/controller/disease_controllers/add_disease_controller.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// ignore: must_be_immutable
class AddDisease extends StatefulWidget{

  final AddDiseaseController controller = AddDiseaseController();

  AddDisease({super.key});
  
  @override
  State<StatefulWidget> createState() => _CreateDiseaseState();
}

class _CreateDiseaseState extends State<AddDisease>{

  final _formKey = GlobalKey<FormState>();

  String? nome;
  String? explicacao;
  String? resumo;
  String? beneficios;
  String? recomendacao;
  String? contraIndicacao;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          width: 400,
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Nome"
                  ),
                  validator: (value) {
                    if(value == null || value.isEmpty){
                      return 'Nome vazio';
                    }
                    nome = value;
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Explicação"
                  ),
                  validator: (value) {
                    if(value == null){
                      return '';
                    }
                    explicacao = value;
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Resumo"
                  ),
                  validator: (value) {
                    if(value == null){
                      return '';
                    }
                    resumo = value;
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Beneficios"
                  ),
                  validator: (value) {
                    if(value == null){
                      return '';
                    }
                    beneficios = value;
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Recomendação"
                  ),
                  validator: (value) {
                    if(value == null){
                      return '';
                    }
                    recomendacao = value;
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Contra Indicação"
                  ),
                  validator: (value) {
                    if(value == null){
                      return '';
                    }
                    contraIndicacao = value;
                    return null;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: ElevatedButton(
                    onPressed: () {
                      if(_formKey.currentState!.validate()){
                        widget.controller.createDisease(
                          name: nome,
                          explanation: explicacao,
                          overview: resumo,
                          benefits: beneficios,
                          recommendations: recomendacao,
                          contraIndications: contraIndicacao
                        );
                        context.goNamed("home");
                      }
                    }, 
                    child: const Text("Criar"))
                  ),
              ],
            ),
          )
        )
      )
    );
  }
}