import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter/material.dart';

class SecondPage extends HookWidget {
  final String data;

  SecondPage({
    Key key,
    @required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counter = useState('');

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('SecondPage'),
        ),
        body: Container());
  }
}
