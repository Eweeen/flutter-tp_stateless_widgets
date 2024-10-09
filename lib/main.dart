import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TP Stateless Widgets',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyStatelessWidget(username: 'Alice'),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  final String username;

  MyStatelessWidget({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mon Premier Stateless Widget 🥳')),
      body: Center(
        child: Text(
          'Salut $username, bienvenue dans le monde des Stateless Widgets! 🌍',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
