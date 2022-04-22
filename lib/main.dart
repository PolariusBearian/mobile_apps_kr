import 'package:flutter/material.dart';
import 'package:oandx/main_menu.dart';
import 'package:oandx/select_name.dart';
import 'package:oandx/game.dart';

void main() {
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Крестики - нолики',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/',
      routes:{
        '/': (context) => main_menu(),
        '/game': (context) => Game(),
        '/select_name': (context) => Select_name(),
      },
    );
  }
}
