import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const nomeProj = 'Apontator';

  static const _api = 'https://192.168.0.222:9999/lista/apontamentos/';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: nomeProj,
      home: Scaffold(
        appBar: AppBar(title: const Text(nomeProj)),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(_api),
              const TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Frase',
                ),
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text('Botão'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
