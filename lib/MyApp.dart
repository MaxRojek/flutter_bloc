import 'package:flutter/material.dart';
import 'package:my_app/src/SecondPage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'src/MyHomePage.dart';
import 'src/SecondPage.dart';
import './src/bloc/CounterBloc.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => CounterBloc(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.grey,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: TextTheme(
            headline1: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
            headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
            bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
          ),
        ),
        // home: MyHomePage(),

        home: MyHomePage(),
        routes: {
          '/second': (_) => SecondPage(
                data: "nav",
              )
        },
      ),
    );
  }
}
