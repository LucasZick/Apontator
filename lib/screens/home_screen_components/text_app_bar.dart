import 'package:flutter/material.dart';

/// classe que constroi o texto da AppBar da Home Screen
/// parametros : texto e tamanho da fonte

class TextAppBar extends StatelessWidget {
  String text;
  double fontSize;
  TextAppBar({Key? key, this.text = '-', this.fontSize = 40}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: const Color.fromARGB(255, 60, 100, 30),
        fontWeight: FontWeight.w400,
      ),
    ));
  }
}
