import 'package:apontator/screens/home_screen_components/text_field_search.dart';
import 'package:flutter/material.dart';
import 'label_container.dart';

class ContainerMid extends StatefulWidget {
  /// Cria o container do meio da HomeScreen // Sem parâmetros

  const ContainerMid({Key? key}) : super(key: key);

  @override
  State<ContainerMid> createState() => _ContainerMidState();
}

class _ContainerMidState extends State<ContainerMid> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.6,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              TextFieldSearch(hint: 'CÓDIGO DA OPERAÇÃO', id: 'operacao'),
              TextFieldSearch(hint: 'CÓDIGO DA MÁQUINA', id: 'maquina'),
              TextFieldSearch(hint: 'CÓDIGO DO FUNCIONÁRIO', id: 'funcionario'),
              LabelContainer(),
            ],
          ),
        ));
  }
}
