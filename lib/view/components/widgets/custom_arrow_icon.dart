import 'package:flutter/material.dart';
import '../colors/colors.dart';

class CustomArrowIcon extends StatelessWidget {
  final Color color;

  const CustomArrowIcon({super.key, this.color = AppColors.colorWhite});

//Widget para ícone da seta dos cartões
  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.expand_more,
      color: color,
    );
  }
}
