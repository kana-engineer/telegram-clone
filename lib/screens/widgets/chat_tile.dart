import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({super.key});

  @override
  Widget build(BuildContext context) {
    return 
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
            
          );
  }
}