import 'package:apontator/screens/config_screen_components/config_text_field.dart';
import 'package:flutter/material.dart';

import './config_screen_components/config_app_bar.dart';
import './config_screen_components/config_save_button.dart';

class ConfigScreen extends StatelessWidget {
  const ConfigScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const ConfigAppBar(),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: ConfigTextField(),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: ConfigTextField(),
          ),
        ],
      ),
      floatingActionButton: const ConfigSaveButton(),
    ));
  }
}
