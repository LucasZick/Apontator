import 'package:flutter/material.dart';
import 'text_field_search.dart';

class CreateButton extends StatelessWidget {
  /// Cria os botões da Home Screen // Parâmetros: texto , height e width (dimensões)

  final String text;
  final double height;
  final double width;
  final int id;

  const CreateButton(
      {Key? key,
      this.id = 0,
      this.text = '-',
      this.height = 150.0,
      this.width = 300.0})
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
          primary: Colors.green,
        ),
        child: Text(
          text,
          style: TextStyle(color: Theme.of(context).accentColor, fontSize: 24),
          textAlign: TextAlign.center,
        ),
        onPressed: () {
          print(TextFieldSearch.details['maquina']);
        },
      ),
    );
  }
}
