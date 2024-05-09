import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors/colors.dart';

//TODO criar backdropfilter para efeito blur
class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
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
                  ModalRoute.of(context)!.settings.name!,
                  textAlign: TextAlign.center, // Centraliza o texto
                  style: GoogleFonts.lora(
                    textStyle: const TextStyle(
                      color: AppColors.colorDarkBlue,
                    ),
                    fontSize: 30,
                  ),
                ),
              ),
            ],
          ),
          ListTile(
            title: const Text('Item 1'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Item 2'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
