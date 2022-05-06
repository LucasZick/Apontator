import 'package:apontator/screens/home_screen_components/text_field_search.dart';
import 'package:flutter/material.dart';

class ContainerMid extends StatelessWidget {
  /// Cria o container do meio da HomeScreen // Sem parâmetros

  const ContainerMid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.6,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              TextFieldSearch(hint: 'CÓDIGO DA OPERAÇÃO'),
              TextFieldSearch(hint: 'CÓDIGO DA MÁQUINA'),
              TextFieldSearch(hint: 'CÓDIGO DO FUNCIONÁRIO')
            ],
          ),
        ));
  }
}
