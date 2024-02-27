import 'package:flutter/material.dart';

class NavBar extends StatelessWidget{
  final Widget title;

  NavBar({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue,
      title: title,
    );
  }

}