import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter/material.dart';

class CustomCard extends HookWidget {
  CustomCard({@required this.index, @required this.onPress});
  final index;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: <Widget>[
        Text('Card $index'),
        TextButton(
          child: const Text('Press'),
          onPressed: this.onPress,
        ),
      ],
    ));
  }
}
