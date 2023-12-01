import 'package:chateando/CustomUI/custom_card.dart';
import 'package:chateando/Model/chat_model.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats = [
    ChatModel(
      name: "Paula Alvarez",
      icon: "person_black.svg",
      isGroup: false,
      currentMessage: "Hola, Como estas?",
      time: "16:00",
    ),
    ChatModel(
      name: "Flutter, NodeJS & socket.io",
      icon: "groups_black.svg",
      isGroup: true,
      currentMessage: "Hola, grupo como están?",
      time: "16:05",
    ),
    ChatModel(
      name: "Sara",
      icon: "person_black.svg",
      isGroup: false,
      currentMessage: "Hola Paula",
      time: "16:04",
    ),
    ChatModel(
      name: "Tom",
      icon: "person_black.svg",
      isGroup: false,
      currentMessage: "Hola Tom",
      time: "16:05",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.blue,
        splashColor: Colors.purple.shade100,
        elevation: 12,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(40.0))),
        onPressed: () {
          //print('');
        },
        child: const Icon(Icons.chat),
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) => CustomCard(
          chatModel: chats[index],
        ),
      ),
    );
  }
}
