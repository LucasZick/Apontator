import 'package:flutter/material.dart';

class CreateButton extends StatelessWidget {
  /// Cria os botões da Home Screen // Parâmetros: texto , height e width (dimensões)

  final String text;
  final double height;
  final double width;

  const CreateButton(
      {Key? key, this.text = '-', this.height = 100.0, this.width = 200.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextButton(
        style: TextButton.styleFrom(
            primary: const Color.fromARGB(255, 13, 37, 7),
            backgroundColor: const Color.fromARGB(255, 60, 100, 30),
            elevation: 10,
            shadowColor: const Color.fromARGB(255, 0, 0, 0)),
        child: Text(
          text,
          style: const TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          textAlign: TextAlign.center,
        ),
        onPressed: () {},
      ),
    );
  }
}
