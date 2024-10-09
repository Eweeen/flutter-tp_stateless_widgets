import 'package:flutter/material.dart';

void main() => runApp(MyApp());

final List<Object> messages = [
  'Bonjour Zoé 🌞',
  'Bien joué pour la partie précédent 🎉',
  'Les Stateless Widgets sont incroyables, n\'est-ce pas? 🚀',
  'Continuez à coder ! 💻',
  UserProfileCard(
    name: 'Alice',
    job: 'Développeuse Flutter',
    image: AssetImage('assets/IMG_6253.jpg'),
  ),
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
            if (messages[index] is UserProfileCard) {
              return UserProfileCard(
                name: (messages[index] as UserProfileCard).name,
                job: (messages[index] as UserProfileCard).job,
                image: (messages[index] as UserProfileCard).image,
              );
            } else {
              return MessageCard(message: messages[index] as String);
            }
          },
        ),
      ),
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
          padding: EdgeInsets.all(8.0),
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

class UserProfileCard extends StatelessWidget {
  final String name;
  final String job;
  final ImageProvider image;

  UserProfileCard({required this.name, required this.job, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: ListTile(
          leading: CircleAvatar(backgroundImage: image),
          title: Text(
            name,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(job),
        ),
      ),
    );
  }
}
