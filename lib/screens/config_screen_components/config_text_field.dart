import 'package:flutter/material.dart';

class ConfigTextField extends StatefulWidget {
  ConfigTextField({Key? key}) : super(key: key);

  @override
  State<ConfigTextField> createState() => ConfigTextFieldState();
}

class ConfigTextFieldState extends State<ConfigTextField> {
  static var configController = TextEditingController();

  void initState() {
    super.initState();
    configController.addListener(() {
      final String text = configController.text.toLowerCase();
      configController.value = configController.value.copyWith(
        text: text,
        selection:
            TextSelection(baseOffset: text.length, extentOffset: text.length),
        composing: TextRange.empty,
      );
    });
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    configController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: configController,
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
