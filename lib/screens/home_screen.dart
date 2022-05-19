import 'package:apontator/screens/config_screen.dart';
import 'package:flutter/material.dart';
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
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('APONTAR PRODUÇÃO'),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ConfigScreen()),
                  );
                },
                icon: Icon(Icons.settings),
                iconSize: MediaQuery.of(context).size.height * 0.04,
              ),
            )
          ],
          elevation: 5,
          shadowColor: Colors.lightGreenAccent,
          toolbarHeight: MediaQuery.of(context).size.height * 0.1 - 24,
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: Column(children: const [
          ContainerMid(),
          ContainerBottom(),
        ]),
      ),
    );
  }
}
