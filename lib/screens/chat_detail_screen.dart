

import 'package:flutter/material.dart';
import 'package:telegram_clone/widgets/message_bubble.dart';

class ChatDetailScreen extends StatelessWidget {
  final String name;
  const ChatDetailScreen({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(name, style: TextStyle(
            fontWeight: FontWeight.w500,
          ),),
        ),
      ),

      body: ListView(
        children: [
          MessageBubble(message: "Привет! как дела?", isMine: false),
         MessageBubble(message: "Привет! все хорошо.", isMine: true)
        ],
      ), 

      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.all(8),
          child: Row(
            children: [
              const Icon(Icons.attach_file),

              const SizedBox(width: 8,),

              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Message",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                    )
                  ),
                ),
              ),

              SizedBox(width: 8,),

              const Icon(Icons.send),
            ],
          ),
        ),
      ),
    );
  }
}