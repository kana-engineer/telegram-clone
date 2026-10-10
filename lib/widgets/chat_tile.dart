import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  final String name;
  final String message;
  final String time;
  final int unreadCount;
  final String userIcon;
  const ChatTile({super.key, required this.name, required this.message, required this.time, required this.unreadCount, required this.userIcon});

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
                child: Text(userIcon),
              ),

              SizedBox(width: 20,),

              Expanded(child: 
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(name, style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),),
                      Text(time),
                    ],
                  ),

                  SizedBox(height: 8,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(child: Text(message, maxLines: 1, overflow: TextOverflow.ellipsis,)),
                      if(unreadCount > 0)
                        Container(
                          width: 22,
                          height: 22,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            color: Color(0xFF34C759),
                            shape: BoxShape.circle,
                          ),

                          child: Text(unreadCount.toString(), style: TextStyle(
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