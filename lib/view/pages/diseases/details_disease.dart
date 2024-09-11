import 'package:edefinir/controller/disease_controllers/details_disease_controller.dart';
import 'package:edefinir/model/entities/disease.dart';
import 'package:edefinir/view/components/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsDisease extends StatelessWidget {
  
  final Disease disease;

  DetailsDisease({super.key, required this.disease});

  final DetailsDiseaseController diseaseController = DetailsDiseaseController();

  @override
  Widget build(BuildContext context) {
    //Doença por parametro

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.colorLightGrey,
        title: Text(disease.name),
      ),
      body: Center(
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if(diseaseController.isLogged()) ... [ElevatedButton(
              onPressed: () => {
                context.goNamed("edit", extra: disease)
              }, 
              child: const Text("Editar")
            )],
            Card(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: ExpansionTile(
                title: Row(children: [
                  Text("Detalhes",
                      style: GoogleFonts.lora(
                          textStyle:
                              const TextStyle(color: AppColors.colorWhite),
                          fontSize: 30)),
                ]), //TODO ícone de seta
                collapsedBackgroundColor: AppColors.colorBlueLight,
                initiallyExpanded: false,
                iconColor: AppColors.colorWhite,
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
                                  child: Text(
                                    disease.explanation,
                                    style: GoogleFonts.lora(
                                      fontSize: 20
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ))),
                ],
              ),
            ),
            Card(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: ExpansionTile(
                title: Row(children: [
                  Text("Recomendações",
                      style: GoogleFonts.lora(
                          textStyle:
                              const TextStyle(color: AppColors.colorWhite),
                          fontSize: 30)),
                ]), //TODO ícone de seta
                collapsedBackgroundColor: AppColors.colorBlueLight,
                initiallyExpanded: false,
                iconColor: AppColors.colorWhite,
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
                                  child: Text(
                                    disease.recommendations,
                                    style: GoogleFonts.lora(
                                      fontSize: 17.5
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ))),
                ],
              ),
            ),
            Card(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: ExpansionTile(
                title: Row(children: [
                  Text("Beneficios",
                      style: GoogleFonts.lora(
                          textStyle:
                              const TextStyle(color: AppColors.colorWhite),
                          fontSize: 30)),
                ]), //TODO ícone de seta
                collapsedBackgroundColor: AppColors.colorBlueLight,
                initiallyExpanded: false,
                iconColor: AppColors.colorWhite,
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
                                  child: Text(
                                    disease.benefits,
                                    style: GoogleFonts.lora(),
                                  ),
                                ),
                              )
                            ],
                          ))),
                ],
              ),
            ),
            Card(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: ExpansionTile(
                title: Row(children: [
                  Text("Contra Indicações",
                      style: GoogleFonts.lora(
                          textStyle:
                              const TextStyle(color: AppColors.colorWhite),
                          fontSize: 30)),
                ]), //TODO ícone de seta
                collapsedBackgroundColor: AppColors.colorBlueLight,
                initiallyExpanded: false,
                iconColor: AppColors.colorWhite,
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
                                  child: Text(
                                    disease.contraIndications,
                                    style: GoogleFonts.lora(),
                                  ),
                                ),
                              )
                            ],
                          ))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
