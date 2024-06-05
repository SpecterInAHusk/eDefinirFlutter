

import 'package:edefinir/controller/disease_controllers/edit_disease_controller.dart';
import 'package:edefinir/model/entities/disease.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// ignore: must_be_immutable
class EditDisease extends StatefulWidget{

  final EditDiseaseController controller = EditDiseaseController();
  final Disease disease;
  
  EditDisease({super.key, required this.disease});
  
  @override
  State<StatefulWidget> createState() => _CreateDiseaseState(disease);
}

class _CreateDiseaseState extends State<EditDisease>{
  final _formKey = GlobalKey<FormState>();
  final Disease disease;

  String? nome;
  String? explicacao;
  String? resumo;
  String? beneficios;
  String? recomendacao;
  String? contraIndicacao;
  
  _CreateDiseaseState(this.disease);

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
                  initialValue: disease.name,
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
                  initialValue: disease.explanation,
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
                  initialValue: disease.overview,
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
                  initialValue: disease.benefits,
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
                  initialValue: disease.recommendations,
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
                  initialValue: disease.contraIndications,
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
                        widget.controller.updateDisease(
                          id: disease.id,
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
                    child: const Text("Editar"))
                  ),
                   Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: ElevatedButton(
                    onPressed: () {
                      widget.controller.deleteDisease(id: disease.id);
                      context.goNamed("home");
                    }, 
                    child: const Text("Excluir"))
                  ),
              ],
            ),
          )
        )
      )
    );
  }
}