

import 'package:edefinir/controller/disease_controllers/edit_disease_controller.dart';
import 'package:edefinir/model/entities/disease.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class EditDisease extends StatefulWidget{

  final EditDiseaseController controller = EditDiseaseController();
  
  EditDisease({super.key});
  
  @override
  State<StatefulWidget> createState() => _CreateDiseaseState();
}

class _CreateDiseaseState extends State<EditDisease>{
  final _formKey = GlobalKey<FormState>();

  String? nome;
  String? explicacao;
  String? resumo;
  String? beneficios;
  String? recomendacao;
  String? contraIndicacao;

  @override
  Widget build(BuildContext context) {
    Disease disease = ModalRoute.of(context)!.settings.arguments as Disease;
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