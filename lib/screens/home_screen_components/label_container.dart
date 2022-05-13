import 'package:apontator/screens/home_screen_components/container_bottom.dart';
import 'package:flutter/material.dart';

class LabelContainer extends StatefulWidget {
  ///Container onde são dispostos os dados recebidos como retorno da API.

  const LabelContainer({Key? key}) : super(key: key);

  @override
  State<LabelContainer> createState() => LabelContainerState();
}

class LabelContainerState extends State<LabelContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.3,
        width: double.infinity,
        color: Color.fromARGB(255, 204, 241, 162),
        child: Center(
            child: Column(
          children: [
            Text(
              ContainerBottom.texto['operacao'].toString(),
              style: TextStyle(
                  color: Theme.of(context).primaryColor, fontSize: 24),
              textAlign: TextAlign.center,
            ),
            Text(
              ContainerBottom.texto['realizado'].toString(),
              style: TextStyle(
                  color: Theme.of(context).primaryColor, fontSize: 24),
              textAlign: TextAlign.center,
            ),
            Text(
              ContainerBottom.texto['total'].toString(),
              style: TextStyle(
                  color: Theme.of(context).primaryColor, fontSize: 24),
              textAlign: TextAlign.center,
            ),
          ],
        )));
  }
}
