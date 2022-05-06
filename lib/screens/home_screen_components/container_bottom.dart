import 'package:apontator/screens/home_screen_components/create_button.dart';
import 'package:flutter/material.dart';

class ContainerBottom extends StatelessWidget {
  ///Constroi o container inferior da HomeScreen // Sem parâmetros

  const ContainerBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.3,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          CreateButton(text: 'INICIAR\nAPONTAMENTO'),
          CreateButton(text: 'FINALIZAR\nAPONTAMENTO')
        ],
      ),
    );
  }
}
