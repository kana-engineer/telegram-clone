

import 'package:flutter/material.dart';

class ChatDetailScreen extends StatelessWidget {
  const ChatDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alex Smith"),
      ),

      body: const Center(
        child: Text("Messages"),
      ),
    );
  }
}