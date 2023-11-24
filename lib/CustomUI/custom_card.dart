import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  const CustomCard({super.key});

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return const ListTile(
       leading: CircleAvatar(
        radius: 25,
       ),
      title: Text("Paula", style: TextStyle( fontSize:16, fontWeight: FontWeight.bold),),
      trailing: Text("18:04"), 
      subtitle: Row(
        children: [
          Icon(Icons.done_all, color: Colors.deepPurple,),
          SizedBox( width: 3,),
          Text('Hola, Como estas?', style: TextStyle( fontSize:13)),
          ],
          ),
    );
  }
}