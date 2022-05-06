import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
            children: [
              TextField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                  hintText: 'CÓDIGO DA PRODUÇÃO',
                  floatingLabelAlignment: FloatingLabelAlignment.center,
                ),
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                keyboardType: TextInputType.number,
              ),
            ],
          ),
        ));
  }
}
