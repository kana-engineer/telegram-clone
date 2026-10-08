import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


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

          Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          child:  Row(
            children: [
              CircleAvatar(
                radius: 28,
                child: Text("A"),
              ),

              SizedBox(width: 20,),

              Expanded(child: 
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Alex Smith", style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),),
                      Text("12:45"),
                    ],
                  ),

                  SizedBox(height: 8,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Привет! как дела?"),
                      Container(
                        width: 22,
                        height: 22,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: Color(0xFF34C759),
                          shape: BoxShape.circle,
                        ),

                        child: const Text("2", style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),)
                      ),
                    ],
                  ),
                ],
              ),
              )
            ],
          ),
            
          ),
        ],
      ),
    );
  }
}