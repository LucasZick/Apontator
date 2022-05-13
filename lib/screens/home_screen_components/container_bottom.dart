import 'package:apontator/screens/home_screen_components/create_button.dart';
import 'package:apontator/screens/home_screen_components/label_container.dart';
import 'package:flutter/material.dart';

class ContainerBottom extends StatefulWidget {
  ///Constroi o container inferior da HomeScreen// Sem parâmetros
  static Map texto = {'operacao': '', 'realizado': '', 'total': ''};

  const ContainerBottom({Key? key}) : super(key: key);

  @override
  State<ContainerBottom> createState() => _ContainerBottomState();
}

class _ContainerBottomState extends State<ContainerBottom> {
  refresh(Map textoAPI) {
    setState(
      () {
        if (textoAPI != null) {
          ContainerBottom.texto['operacao'] = textoAPI['operacao'];
          if (textoAPI['realizado'] == null) {
            ContainerBottom.texto['realizado'] = 0;
          } else {
            ContainerBottom.texto['realizado'] = textoAPI['realizado'];
          }
          ContainerBottom.texto['total'] = textoAPI['total'];
          print(ContainerBottom.texto);
        } else {
          ContainerBottom.texto['operacao'] = 'Digite uma operação válida';
          ContainerBottom.texto['realizado'] = '';
          ContainerBottom.texto['total'] = '';
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.6,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          LabelContainer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CreateButton(
                  notifyParent: refresh, text: 'INICIAR\nAPONTAMENTO', id: 1),
              CreateButton(
                  notifyParent: refresh, text: 'FINALIZAR\nAPONTAMENTO', id: 2)
            ],
          ),
        ],
      ),
    );
  }
}
