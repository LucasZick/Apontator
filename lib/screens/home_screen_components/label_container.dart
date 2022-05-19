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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width * 1,
                  child: Center(
                    child: Text(
                      ContainerBottom.texto
                          .toString()
                          .replaceAll(',', '\n')
                          .substring(
                              1, ContainerBottom.texto.toString().length - 1),
                      style: TextStyle(
                          color: Theme.of(context).primaryColor, fontSize: 24),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
