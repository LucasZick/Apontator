import 'package:flutter/material.dart';

class ContainerMid extends StatelessWidget {
  const ContainerMid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.6,
      child: Column(children: const []),
    );
  }
}
