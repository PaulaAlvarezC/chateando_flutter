import 'package:chateando/Screens/individual_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:chateando/Model/chat_model.dart';

class CustomCard extends StatefulWidget {
  const CustomCard({Key? key, required this.chatModel}) : super(key: key);
  final ChatModel chatModel;

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => IndividualPage()));
      },
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              child: SvgPicture.asset(
                widget.chatModel.isGroup
                    ? "assets/groups_black.svg"
                    : "assets/person_black.svg",
                colorFilter: const ColorFilter.mode(
                  Colors.white70,
                  BlendMode.srcIn,
                ),
                height: 38,
                width: 38,
              ),
            ),
            title: Text(
              widget.chatModel.name,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            trailing: Text(widget.chatModel.time),
            subtitle: Row(
              children: [
                const Icon(
                  Icons.done_all,
                  color: Colors.deepPurple,
                ),
                const SizedBox(
                  width: 3,
                ),
                Text(widget.chatModel.currentMessage,
                    style: const TextStyle(fontSize: 13)),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 20, left: 80),
            child: Divider(
              thickness: 1,
            ),
          ),
        ],
      ),
    );
  }
}
