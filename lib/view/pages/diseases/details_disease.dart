import 'package:edefinir/model/entities/disease.dart';
import 'package:edefinir/view/components/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsDisease extends StatelessWidget {
  const DetailsDisease({super.key});

  @override
  Widget build(BuildContext context) {
    //Doença por parametro
    final Disease disease = GoRouterState.of(context).extra! as Disease;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.colorLightGrey,
        title: Text(disease.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
                initiallyExpanded: true,
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
                  Text("Recomendações",
                      style: GoogleFonts.lora(
                          textStyle:
                              const TextStyle(color: AppColors.colorWhite),
                          fontSize: 30)),
                ]), //TODO ícone de seta
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
                  Text("Beneficios",
                      style: GoogleFonts.lora(
                          textStyle:
                              const TextStyle(color: AppColors.colorWhite),
                          fontSize: 30)),
                ]), //TODO ícone de seta
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
