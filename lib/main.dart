import 'package:flutter/material.dart';

void main() => runApp(MyApp());

final List<String> messages = [
  'Bonjour Zoé 🌞',
  'Bien joué pour la partie précédent 🎉',
  'Les Stateless Widgets sont incroyables, n\'est-ce pas? 🚀',
  'Continuez à coder ! 💻'
];

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
          child: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          return MessageCard(message: messages[index]);
        },
      )),
    );
  }
}

class MessageCard extends StatelessWidget {
  final String message;

  MessageCard({required this.message});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
      child: Padding(
          padding: EdgeInsets.all(16.0),
          child: ListTile(
            leading: Icon(Icons.message),
            title: Text(
              message,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          )),
    );
  }
}
