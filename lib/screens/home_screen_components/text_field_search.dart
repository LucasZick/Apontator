import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldSearch extends StatelessWidget {
  final String hint;

  const TextFieldSearch({Key? key, this.hint = 'Pesquisar'}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.auto,
            fillColor: Colors.white,
            border: const OutlineInputBorder(),
            hintText: hint,
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
