import 'package:flutter/material.dart';

class ConfigSaveButton extends StatelessWidget {
  const ConfigSaveButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.03),
      child: SizedBox(
        width: MediaQuery.of(context).size.height * 0.1,
        height: MediaQuery.of(context).size.height * 0.1,
        child: FloatingActionButton(
          onPressed: () {},
          tooltip: 'Save',
          backgroundColor: Theme.of(context).primaryColor,
          child: Icon(
            Icons.save,
            color: Colors.white,
            size: MediaQuery.of(context).size.height * 0.04,
          ),
        ),
      ),
    );
  }
}
