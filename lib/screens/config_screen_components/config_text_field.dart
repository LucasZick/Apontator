import 'package:flutter/material.dart';

class ConfigTextField extends StatelessWidget {
  ConfigTextField({Key? key}) : super(key: key);

  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    myController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.url,
      cursorColor: Theme.of(context).primaryColor,
      decoration: InputDecoration(
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Theme.of(context).primaryColor)),
          border: UnderlineInputBorder(
              borderSide: BorderSide(color: Theme.of(context).primaryColor)),
          icon: Icon(
            Icons.wifi_tethering,
            color: Theme.of(context).primaryColor,
            size: 50,
          ),
          hintText: 'Digite o link',
          labelText: 'Link',
          labelStyle: TextStyle(color: Theme.of(context).primaryColor)),
      style: const TextStyle(fontSize: 20),
      onSaved: (String? link) {},
      validator: (String? link) {
        return (link != null && link.contains('~'))
            ? 'Não use caracteres especiais'
            : null;
      },
    );
  }
}
