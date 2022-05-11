import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldSearch extends StatefulWidget {
  ///Cria os widgets de texto do formulário de pesquisa, cada botão precisa
  ///receber como parâmetro a hint text e o seu id, o armazenamento é feito no
  ///dicionário com o padrão {<String>id: <String>texto};

  final String hint;
  final String id;
  static var details = {};

  const TextFieldSearch({
    Key? key,
    this.id = 'Sem ID',
    this.hint = 'Pesquisar',
  }) : super(key: key);

  @override
  State<TextFieldSearch> createState() => _TextFieldSearchState();
}

class _TextFieldSearchState extends State<TextFieldSearch> {
  String title = '';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        textAlign: TextAlign.center,
        onChanged: (String texto) {
          TextFieldSearch.details[widget.id] =
              int.parse(texto); // REGISTRO NO DIC
        },
        decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.auto,
            isDense: true,
            contentPadding: const EdgeInsets.all(20),
            fillColor: Colors.white,
            border: const OutlineInputBorder(),
            hintText: widget.hint,
            floatingLabelAlignment: FloatingLabelAlignment.center,
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Theme.of(context).primaryColor, width: 2.0))),
        style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontSize: 25,
        ),
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.digitsOnly
        ],
        keyboardType: TextInputType.number,
      ),
    );
  }
}
