import 'dart:convert';
import 'package:flutter/material.dart';
import 'text_field_search.dart';
import 'package:http/http.dart';

class CreateButton extends StatelessWidget {
  /// Cria os botões da Home Screen // Parâmetros: texto , height e width (dimensões)

  final String text;
  final double height;
  final double width;
  final int id;

  const CreateButton(
      {Key? key,
      required this.id,
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
        onPressed: () async {
          final uri = Uri.parse("http://192.168.0.222:9999/novo/apontamento/");
          Map<String, dynamic> body = {
            "numero_operacao": TextFieldSearch.details['operacao'],
            "numero_maquina": TextFieldSearch.details['maquina'],
            "funcionario_id": TextFieldSearch.details['funcionario'],
            "tipo_apontamento": "TP",
            "data_apontamento": "2020-07-10T08:29:00.191Z",
            "quantidade_operadores": 1,
            "inicio": "1998-10-11T09:52:38.932Z",
          };
          String jsonBody = jsonEncode(body);
          print(jsonBody);

          Response response = await post(uri,
              body: jsonBody, headers: {"Content-Type": "application/json"});

          print(response.statusCode);
          print(response.body);
        },
      ),
    );
  }
}
