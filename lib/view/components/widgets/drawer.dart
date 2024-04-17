import 'package:flutter/material.dart';

//TODO criar backdropfilter para efeito blur
class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
  child: ListView(
    padding: EdgeInsets.zero,
    children: [
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