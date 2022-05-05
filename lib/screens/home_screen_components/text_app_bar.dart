import 'package:flutter/material.dart';

class TextAppBar extends StatelessWidget {
  /// Constroi o texto da AppBar da Home Screen // Parâmetros : texto e tamanho da fonte

  final String text;
  final double fontSize;

  const TextAppBar({Key? key, this.text = '-', this.fontSize = 40})
      : super(key: key);

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
