import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomCard extends StatefulWidget {
  const CustomCard({super.key});

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: () {},
      child: Column(
        children: [
          ListTile(
             leading: CircleAvatar(
              radius: 25,
              child: SvgPicture.asset("assets/groups_black.svg", color: Colors.white70, height: 38, width: 38,),
             ),
            title: const Text("Paula", style: TextStyle( fontSize:16, fontWeight: FontWeight.bold),),
            trailing: const Text("18:04"), 
            subtitle: const Row(
              children: [
                Icon(Icons.done_all, color: Colors.deepPurple,),
                SizedBox( width: 3,),
                Text('Hola, Como estas?', style: TextStyle( fontSize:13)),
                ],
                ),
          ),
          const Padding( 
            padding:  EdgeInsets.only(right: 20, left: 80),
            child:  Divider(
            thickness: 1,
            ),
          ),
        ],
      ),
    );
  }
}