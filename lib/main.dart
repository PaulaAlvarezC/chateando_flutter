import 'package:flutter/material.dart';
import 'Screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chateando',
      theme: ThemeData( 
        fontFamily: "Poppins",
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        primaryColor: Colors.purple, 
        /*secondaryHeaderColor: Colors.white,
        primarySwatch: Colors.purple,*/ 
        
        useMaterial3: true,
      ),
       home: const HomeScreen(),
    );
  }
}

 