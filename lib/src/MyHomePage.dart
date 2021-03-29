import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter/material.dart';
import 'package:my_app/src/bloc/CounterBloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final CounterBloc _counterBloc = BlocProvider.of<CounterBloc>(context);
    final value1 = useState("");
    final value2 = useState("");
    final value3 = useState("");
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('Concrete calculator'),
      ),
      body: BlocBuilder(
          bloc: _counterBloc,
          builder: (BuildContext context, int count) {
            return Center(
                child: Column(children: <Widget>[
              Container(
                  margin: const EdgeInsets.only(top: 60),
                  child: TextField(
                    onChanged: (text) {
                      value1.value = text;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: "Your first value",
                    ),
                  ),
                  width: 240),
              Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: TextField(
                    onChanged: (text) {
                      value2.value = text;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: "Your second value",
                    ),
                  ),
                  width: 240),
              Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: TextField(
                    onChanged: (text) {
                      value3.value = text;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: "Your third value",
                    ),
                  ),
                  width: 240),
              Container(
                // red box
                child: Text(
                  '${count}',
                ),
                decoration: BoxDecoration(
                  color: Colors.red[400],
                ),
                padding: EdgeInsets.all(16),
                width: 240, //max-width is 240
              ),
            ]));
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _counterBloc.add(CounterEvent.increment),
        child: Icon(Icons.add),
      ),
    );
  }
}
