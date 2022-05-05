import 'package:apontator/screens/home_screen_components/create_button.dart';
import 'package:flutter/material.dart';

class ContainerBottom extends StatelessWidget {
  const ContainerBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            width: 2,
          ),
          color: const Color.fromARGB(255, 255, 255, 255)),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.3,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CreateButton(text: 'INICIAR\nAPONTAMENTO'),
          CreateButton(text: 'FINALIZAR\nAPONTAMENTO')
        ],
      ),
    );
  }
}