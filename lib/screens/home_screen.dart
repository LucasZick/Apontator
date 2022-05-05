import 'package:flutter/material.dart';
import 'home_screen_components/text_app_bar.dart';
import 'home_screen_components/container_mid.dart';
import 'home_screen_components/container_bottom.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: TextAppBar(text: 'APONTAR PRODUÇÃO'),
          toolbarHeight: MediaQuery.of(context).size.height * 0.1 - 24,
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        ),
        backgroundColor: const Color.fromARGB(255, 60, 100, 30),
        body: Column(
          children: const [
            ContainerMid(),
            ContainerBottom(),
          ],
        ),
      ),
    );
  }
}
