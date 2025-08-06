import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final message = ModalRoute.of(context)!.settings.arguments as RemoteMessage;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Notification', style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),),
      ),
      body:  Card(
        color: const Color.fromARGB(255, 240, 243, 203),
        shadowColor: const Color.fromARGB(255, 128, 121, 95),
        shape: const RoundedRectangleBorder(),
        margin: const EdgeInsets.all(10),
        child: Row(children: [
Text(message.notification!.title.toString(),),
Text(message.notification!.body.toString(),),
Text(message.data.toString()),

        ],),
      ),
    );
  }
}