import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../screens/widgets/chat_tile.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
              Text("Edit", style: TextStyle(
                 color: Colors.blueAccent
              ),),
              Text("Chats", style: TextStyle(
                fontWeight: FontWeight.w600,
              ),),
              SvgPicture.asset(
                'assets/icons/Edit Icon.svg',
                width: 24,
                height: 24,
              ),
          ],
        ),
      ),

      body: ListView(
        children: [ Padding(padding: EdgeInsets.only(top: 8),
        child: Center(
          child: SizedBox(
            width: 380,
            height: 40,
            child: TextField(
            textAlign: TextAlign.center,
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(

              hint: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.search),
                  SizedBox(width: 10,),
                  const Text("Search for messages or users", style: TextStyle(color: Color(0xFF3C3C43)))
                ],
              ),

             
              filled: true,
              fillColor: Colors.grey.shade200,

              contentPadding: EdgeInsets.zero,

              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.black, width: 1,
                ),
              )
            ),
            ),
          ),
          ),
          ),

          SizedBox(height: 25,),

          ChatTile(),
          ChatTile(),
          ChatTile(),
          ChatTile(),
          ChatTile(),


        ],
      ),
    );
  }
}