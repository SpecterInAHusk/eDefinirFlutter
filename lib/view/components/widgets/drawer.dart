import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors/colors.dart';

//TODO criar backdropfilter para efeito blur
class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Expanded(
            child:  ListView(
              padding: EdgeInsets.zero,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: () => {Navigator.pop(context)}, icon: const Icon(
                      Icons.arrow_back_rounded,
                      color: AppColors.colorDarkBlue,
                      size: 30.0,
                      semanticLabel: 'Return to previous',
                    ),),
                    Expanded( // Usa Expanded para o texto
                      child: Text(
                        //ModalRoute.of(context)!.settings.name!,
                        "Home",
                        textAlign: TextAlign.center, // Centraliza o texto
                        style: GoogleFonts.lora(
                          textStyle: const TextStyle(
                            color: AppColors.colorDarkBlue,
                          ),
                          fontSize: 36,
                        ),
                      ),
                    ),
                  ],
                ),
                ListTile(
                  title: Container(
                    alignment: Alignment.centerLeft, // Isso define o alinhamento do texto dentro do Container
                    child: Text(
                      'Home',
                      textAlign: TextAlign.left, // Alinha o texto à esquerda
                      style: GoogleFonts.lora(
                        textStyle: const TextStyle(
                          color: AppColors.colorDarkBlue, // Substitua AppColors.colorDarkBlue pelo valor correspondente
                        ),
                        fontSize: 25,
                      ),
                    ),
                  ),
                  onTap: () => {Navigator.pushNamed(context, '/home')}
                ),
                const Divider(color: Colors.grey),
                ListTile(
                  title: Container(
                    alignment: Alignment.centerLeft, // Isso define o alinhamento do texto dentro do Container
                    child: Text(
                      'Sobre',
                      textAlign: TextAlign.left, // Alinha o texto à esquerda
                      style: GoogleFonts.lora(
                        textStyle: const TextStyle(
                          color: AppColors.colorDarkBlue, // Substitua AppColors.colorDarkBlue pelo valor correspondente
                        ),
                        fontSize: 25,
                      ),
                    ),
                  ),
                  onTap: () => {Navigator.pushNamed(context, '/login')}
                ),
                const Divider(color: Colors.grey),
                ListTile(
                  title: Container(
                    alignment: Alignment.centerLeft, // Isso define o alinhamento do texto dentro do Container
                    child: Text(
                      'Ajuda',
                      textAlign: TextAlign.left, // Alinha o texto à esquerda
                      style: GoogleFonts.lora(
                        textStyle: const TextStyle(
                          color: AppColors.colorDarkBlue, // Substitua AppColors.colorDarkBlue pelo valor correspondente
                        ),
                        fontSize: 25,
                      ),
                    ),
                  ),
                  onTap: () => {Navigator.pushNamed(context, '/login')}
                ),
                const Divider(color: Colors.grey),
                ListTile(
                  title: Container(
                    alignment: Alignment.centerLeft, // Isso define o alinhamento do texto dentro do Container
                    child: Text(
                      'Acessibilidade',
                      textAlign: TextAlign.left, // Alinha o texto à esquerda
                      style: GoogleFonts.lora(
                        textStyle: const TextStyle(
                          color: AppColors.colorDarkBlue, // Substitua AppColors.colorDarkBlue pelo valor correspondente
                        ),
                        fontSize: 25,
                      ),
                    ),
                  ),
                  onTap: () => {Navigator.pushNamed(context, '/login')},
                    // Ação ao tocar
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                // Ação do botão
              },
              child: Text('Logout'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                textStyle: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      )
    );
  }
}
