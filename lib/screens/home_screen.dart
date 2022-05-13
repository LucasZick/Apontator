import 'package:flutter/material.dart';
import 'home_screen_components/text_app_bar.dart';
import 'home_screen_components/container_mid.dart';
import 'home_screen_components/container_bottom.dart';

class HomeScreen extends StatefulWidget {
  /// Widget principal da HomeScreen

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const TextAppBar(text: 'APONTAR PRODUÇÃO'),
        toolbarHeight: MediaQuery.of(context).size.height * 0.1 - 24,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(children: const [
        ContainerMid(),
        ContainerBottom(),
      ]),
    );
  }
}
