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
      Align(
        alignment: Alignment(0.7, -0.5),
      ),
      const Icon(
        Icons.arrow_back_rounded,
        color: AppColors.colorDarkBlue,
        size: 30.0,
        semanticLabel: 'Return to previous page',
      ),
      Text(
        ModalRoute.of(context)!.settings.name!,
        style: GoogleFonts.lora(
                                  textStyle: const TextStyle(
                                      color: AppColors.colorDarkBlue),
                                  fontSize: 30)
      ),
      ListTile(
        title: const Text('Item 1'),
        onTap: () {
        },
      ),
      ListTile(
        title: const Text('Item 2'),
        onTap: () {
        },
      ),
    ],
  ),
);    


  }
}