import 'package:flutter/material.dart';

class LabelContainer extends StatefulWidget {
  const LabelContainer({Key? key}) : super(key: key);

  @override
  State<LabelContainer> createState() => _LabelContainerState();
}

class _LabelContainerState extends State<LabelContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      color: Theme.of(context).primaryColor,
    );
  }
}
