import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
     final String message;
    final bool isMine;
    const MessageBubble({super.key, required this.message, required this.isMine});

    @override
    Widget build(BuildContext context) {

    return 
        Align(
            alignment: isMine ? Alignment.centerRight : Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.all(12),
              margin: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 6,
              ),
              decoration: BoxDecoration(
                color: isMine ? Color(0xFFD9FDD3) : Colors.grey.shade400,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text(message),
            ),
          );
  }
}