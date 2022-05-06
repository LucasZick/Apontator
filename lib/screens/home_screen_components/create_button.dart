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
          backgroundColor: Theme.of(context).primaryColor,
          elevation: 10,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Theme.of(context).accentColor,
          ),
          textAlign: TextAlign.center,
        ),
        onPressed: () {},
      ),
    );
  }
}
