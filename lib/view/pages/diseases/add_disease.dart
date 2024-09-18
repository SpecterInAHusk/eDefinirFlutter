
import 'package:edefinir/controller/disease_controllers/add_disease_controller.dart';
import 'package:edefinir/model/entities/disease_atribute.dart';
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

  // Lista para armazenar os atributos dinamicamente
  List<DiseaseAtribute> attributes = [];

  // Controladores de texto para os TextFormFields dinâmicos
  List<TextEditingController> titleControllers = [];
  List<TextEditingController> descriptionControllers = [];

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

              ...List.generate(titleControllers.length, (index) {
                  return Column(
                    children: [
                      TextFormField(
                        controller: titleControllers[index],
                        decoration: const InputDecoration(hintText: "Título do Atributo"),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Título vazio';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        controller: descriptionControllers[index],
                        decoration: const InputDecoration(hintText: "Descrição do Atributo"),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Descrição vazia';
                          }
                          return null;
                        },
                      ),
                    ],
                  );
                }),
                
                // Botão para adicionar novos campos de atributos (título e descrição)
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      // Adicionar novos controladores de texto para título e descrição
                      titleControllers.add(TextEditingController());
                      descriptionControllers.add(TextEditingController());

                      // Adicionar novo atributo à lista de atributos
                      attributes.add(DiseaseAtribute(title: '', description: ''));
                    });
                  },
                  child: const Text("Adicionar Atributo"),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: ElevatedButton(
                    onPressed: () {
                      if(_formKey.currentState!.validate()){
                        for (int i = 0; i < titleControllers.length; i++) {
                          attributes[i].title = titleControllers[i].text;
                          attributes[i].description = descriptionControllers[i].text;
                        }

                        widget.controller.createDisease(
                          name: nome,
                          explanation: explicacao,
                          overview: resumo,
                          atributes: attributes
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