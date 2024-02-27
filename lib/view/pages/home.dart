import 'package:edefinir/controller/home_controller.dart';
import 'package:edefinir/model/entities/disease.dart';

import '../components/widgets/drawer.dart';
import 'package:flutter/material.dart';
import '../components/colors/colors.dart';
import 'package:google_fonts/google_fonts.dart';


class Home extends StatefulWidget{

  HomeController controller = HomeController();

  @override
  State<StatefulWidget> createState() => _HomeState();

}

class _HomeState extends State<Home> {

  //Lista de Doenças
  late List<Disease> diseases = [];

  //Funcção de Inicialização do Estado, pega os valores da controller e joga na Lista de Doenças
  @override
  void initState(){
    super.initState();
    widget.controller.getAllDiseas().then((value) => {
      setState(
        () => diseases = value
      )
    });
  }

//TODO estilizar barra superior na sua classe
//TODO estilizar barra superior
//TODO criar barra de pesquisa
//TODO menu lateral
//TODO estilizar cores
//TODO rotas para navegar para a página de detalhes
//TODO scrollbar
//TODO clicar em qualquer parte de um cartão expandido leva à página de detalhes (exceto seta), usar ExpansionTileController:w
//TODO Estilizar cabeçalho does cartões expansíveis
//TODO Mover cartões expansíveis para sua própria classe para serem usados em home e detalhes
  //https://stackoverflow.com/questions/49557555/custom-style-or-theme-for-expansion-tile-header-flutter
//TODO arrumar versão do pubspec para combinar com a branch do lorenzo

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Home"),
      ),
      drawer: MyDrawer(),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () => {Navigator.pushNamed(context, '/login')},
            child: Text("Ir para Login"), //WARN esse botão é apenas para teste,
          ),
          Expanded(
            child: diseases.isEmpty //Verifica se a lista esta vazia
            ? Center(child: CircularProgressIndicator()): //Se estiver roda um carregamento
            ListView.builder(
              itemCount: diseases.length, //tamanho da lista
              itemBuilder: (context, index) {
                Disease disease = diseases[index]; //doenca do index da lista
                return Card(
                  child: ExpansionTile(
                    title: Text(disease.name, style: GoogleFonts.lora(textStyle: const TextStyle(color: AppColors.colorWhite),)), //TODO arrumar fonte do título e ícone de seta
                    initiallyExpanded: true,
                    maintainState: true,
                    expandedAlignment: Alignment.center,
                    backgroundColor: AppColors.colorBlueLight,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    collapsedShape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    //Elementos dos cartões
                    children: [
                      IntrinsicHeight(
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Container(
                                    width: double.infinity,
                                    decoration: const BoxDecoration(
                                      color: AppColors.colorWhite,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(disease.overview, style: GoogleFonts.lora(),),
                                    ),
                                  ),
                                  const SizedBox(height: 8.0,), //Espaço entre caixa de texto e botão

                                  //Botão para Detalhes
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(backgroundColor: AppColors.colorWhite,
                                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(4.0)))),
            onPressed: () => {Navigator.pushNamed(context, '/doenca', arguments: disease)},
                                      child: Text("Saiba mais", style: GoogleFonts.lora(),
                     ),
                                      )
                                ],
                              ))),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
