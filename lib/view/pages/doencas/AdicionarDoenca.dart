
import 'package:edefinir/controller/doencas/AdicionarDoencaController.dart';
import 'package:edefinir/controller/home_controller.dart';
import 'package:edefinir/model/entities/disease.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AdicionarDoenca extends StatefulWidget{

  AdicionarDoencaController controller;
  HomeController teste = HomeController();

  AdicionarDoenca({super.key, required this.controller}) {
    espera();
  }

  espera() async{
    List<Disease> doenca = await teste.getAllDiseas();
  }
  
  @override
  State<StatefulWidget> createState() => _CriarDoencaState();
}

class _CriarDoencaState extends State<AdicionarDoenca>{

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
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: ElevatedButton(
                    onPressed: () {
                      if(_formKey.currentState!.validate()){
                        widget.controller.adicionarDoenca(
                          name: nome,
                          explanation: explicacao,
                          overview: resumo,
                          benefits: beneficios,
                          recommendations: recomendacao,
                          contraIndications: contraIndicacao
                        );
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