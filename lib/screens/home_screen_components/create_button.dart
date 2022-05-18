import 'dart:convert';
import 'package:flutter/material.dart';
import 'text_field_search.dart';
import 'package:http/http.dart';

class CreateButton extends StatefulWidget {
  /// Cria os botões da Home Screen // Parâmetros: texto , height e width (dimensões)

  final String text;
  final double height;
  final double width;
  final int id;

  ValueSetter<Map> notifyParent;

  CreateButton(
      {Key? key,
      required this.notifyParent,
      required this.id,
      this.text = '-',
      this.height = 150.0,
      this.width = 300.0})
      : super(key: key);

  @override
  State<CreateButton> createState() => CreateButtonState();
}

class CreateButtonState extends State<CreateButton> {
  getBodyAbreApontamento() async {
    ///Envia a request para a API e retorna o corpo da response
    try {
      final uri = Uri.parse("http://192.168.0.222:9999/novo/apontamento/");
      Map<String, dynamic> body = {
        "numero_operacao": TextFieldSearch.details['operacao']
      };
      String jsonBody = jsonEncode(body);

      Response response = await post(uri,
          body: jsonBody, headers: {"Content-Type": "application/json"});
      var retornos = jsonDecode(response.body);
      print(retornos);
      retornos['message']['operacao'] = TextFieldSearch.details['operacao'];

      return retornos['message'];
    } catch (error) {
      print(
          'Erro no getBody da abertura do apontamento!'); //se o botão for de FINALIZAR APONTAMENTO
    }
  }

  getBodyFechaApontamento() async {
    ///Envia a request para a API e retorna o corpo da response

    //GET ID DA OPERACAO

    try {
      Uri uri = Uri.parse('http://192.168.0.222:9999/lista/apontamentos/1');
      Response response = await get(uri);
      var retornoID = jsonDecode(response.body);
      var idApont = retornoID[0]['id'];
      //FIM DO GET ID

      uri =
          Uri.parse("http://192.168.0.222:9999/finaliza/apontamento/$idApont/");
      Map<String, dynamic> body = {
        "numero_operacao": TextFieldSearch.details['operacao'],
        "numero_maquina": TextFieldSearch.details['maquina'],
        "funcionario_id": TextFieldSearch.details['funcionario'],
        "tipo_apontamento": "TP",
        "quantidade": TextFieldSearch.details['unidades'],
        "quantidade_operadores": TextFieldSearch.details['operadores'],
        "finalizado": true,
      };
      var jsonBody = jsonEncode(body);
      print(jsonBody);

      response = await put(uri, body: jsonBody, headers: {
        'Content-Type': 'application/json;charset=UTF-8',
        'Charset': 'utf-8'
      });
      var retornos = jsonDecode(response.body);
      print(retornos);
      return retornos;
    } on Exception catch (e) {
      print('Erro no getBody do fechamento do apontamento! $e');
    }
  }

  Map texto = {};

  @override
  Widget build(BuildContext context) {
    //POP UP
    // configura o button
    Widget okButton = FlatButton(
      child: const Icon(
        Icons.check_rounded,
        color: Colors.green,
        size: 70,
      ),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    // configura o  AlertDialog
    AlertDialog alertaErro = AlertDialog(
      title: const Text("ERRO:",
          style: TextStyle(
            color: Colors.red,
            fontSize: 50,
          )),
      content: const Text("Digite uma operação válida.",
          style: TextStyle(
            fontSize: 30,
          )),
      actions: [
        okButton,
      ],
    );
    AlertDialog confirmaApontamento = AlertDialog(
      title: Text("AVISO",
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 50,
          )),
      content: const Text("Apontamento iniciado!",
          style: TextStyle(
            fontSize: 30,
          )),
      actions: [
        okButton,
      ],
    );
    //POP UP ENDING

    //MODAL AREA
    Widget cancelaButton = TextButton(
      child: const Icon(
        Icons.close_rounded,
        color: Colors.red,
        size: 70,
      ),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    Widget dispararButton = TextButton(
        child: const Icon(
          Icons.check_rounded,
          color: Colors.green,
          size: 70,
        ),
        onPressed: () async {
          Navigator.of(context).pop();
          if (widget.id == 1) {
            try {
              texto = await getBodyAbreApontamento();
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return confirmaApontamento;
                },
              );
            } catch (error) {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return alertaErro;
                },
              );
            }
          } else if (widget.id == 2) {
            try {
              texto = getBodyFechaApontamento();
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return confirmaApontamento;
                },
              );
            } catch (error) {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return alertaErro;
                },
              );
            }
          } else {
            print('erro');
          }
          widget.notifyParent(texto);
        });

    AlertDialog alert = AlertDialog(
      title: Text("AVISO",
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 50,
          )),
      content: const Text("Confirmar ação",
          style: TextStyle(
            fontSize: 30,
          )),
      actions: [
        cancelaButton,
        dispararButton,
      ],
    );
    //MODAL AREA ENDING

    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Theme.of(context).primaryColor,
          elevation: 10,
          primary: Colors.green,
        ),
        child: Text(
          widget.text,
          style: TextStyle(color: Theme.of(context).accentColor, fontSize: 24),
          textAlign: TextAlign.center,
        ),
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return alert;
            },
          );
        },
      ),
    );
  }
}
