import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TP Stateless Widgets',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyStatelessWidget(title: 'Mon Premier Stateless Widget 🥳'),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  final String title;

  MyStatelessWidget({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Text(
          'Bienvenue dans le monde des Stateless Widgets! 🌍',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
