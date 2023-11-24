import 'package:chateando/CustomUI/custom_card.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.blue,
        splashColor: Colors.purple.shade100,
        elevation: 12,  
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(40.0))
        ),
        onPressed: () {
           //print('');
        },   
        child: const Icon(Icons.chat),  
      ),
      body: ListView(
        children: const [
        CustomCard(),
        CustomCard(),
        CustomCard(),
        
      ]
      ),
      
    );
  }
}