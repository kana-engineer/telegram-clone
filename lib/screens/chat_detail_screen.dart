

import 'package:flutter/material.dart';

class ChatDetailScreen extends StatelessWidget {
  final String name;
  const ChatDetailScreen({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),

      body: const Center(
        child: Text("Messages"),
      ),
    );
  }
}