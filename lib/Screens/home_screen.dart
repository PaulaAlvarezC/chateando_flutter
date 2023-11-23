import 'package:flutter/material.dart';
import 'package:flutter_gradient_app_bar/flutter_gradient_app_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen>  with SingleTickerProviderStateMixin {
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
          IconButton(
            icon: const Icon(Icons.more_vert), // Añade 'const' aquí
            onPressed: () {},
          ),
        ],
        bottom: TabBar(
          controller: _controller,
          indicatorColor: Colors.grey,
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
         Text("Chats"),
         Text("Status"),
         Text("Calls"),


      ]),
    );
  }
}
