import 'package:flutter/material.dart';
import 'package:flutter_gradient_app_bar/flutter_gradient_app_bar.dart';
import '../Pages/chat_page.dart';

class HomeScreen extends StatefulWidget { 
  const HomeScreen({super.key});

  @override
   State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>  with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState(){
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 0);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: GradientAppBar(
        gradient: const LinearGradient(colors: [Colors.purple, Colors.blue]),
        title: const Text("Chateando"), // Añade 'const' aquí
        actions: [
          IconButton(
            icon: const Icon(Icons.search), // Añade 'const' aquí
            onPressed: () {},
          ),
          PopupMenuButton<String>(
            icon: const Icon(Icons.more_vert,color: Colors.white),
            onSelected: (value){
              print(value);

            },
            itemBuilder: (BuildContext context){
            return const [
              PopupMenuItem(
                value: "New group",
                child: Text("New group"),
              ),
             PopupMenuItem(
                value: "New broadcast",
                child: Text("New broadcast"),
              ),
              PopupMenuItem(
                value: "Chateando Web",
                child: Text("Chateando Web"),
              ),
              PopupMenuItem(
                value: "Starred messages",
                child: Text("Starred messages"),
              ),
              PopupMenuItem(
                value: "Settings",
                child: Text("Settings"),
              ),
            ];
          },
          ),
          
        ],
        bottom: TabBar(
          controller: _controller,
          indicatorColor: Colors.white,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.grey,
          tabs: const [
            Tab(
              icon: Icon(
                Icons.camera_alt), 
            ),
            Tab( 
              
              text: "CHATS",
              
            ),
            Tab( 
              text: "STATUS",
            ),
             Tab( 
              text: "CALLS",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: const [
         Text("Camera"),
         ChatPage(),
         Text("Status"),
         Text("Calls"),


      ]),
    );
  }
}
