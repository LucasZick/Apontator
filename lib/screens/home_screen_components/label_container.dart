import 'package:flutter/material.dart';

class LabelContainer extends StatefulWidget {
  ///Container onde são dispostos os dados recebidos como retorno da API.

  const LabelContainer({Key? key}) : super(key: key);

  @override
  State<LabelContainer> createState() => _LabelContainerState();
}

class _LabelContainerState extends State<LabelContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      color: Color.fromARGB(255, 204, 241, 162),
    );
  }
}
