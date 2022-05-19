import 'package:flutter/material.dart';

class ConfigAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ConfigAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'CONFIGURAÇÕES DE REDE',
        style: TextStyle(fontSize: 25),
      ),
      elevation: 5,
      shadowColor: Colors.lightGreenAccent,
      backgroundColor: Theme.of(context).primaryColor,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}
