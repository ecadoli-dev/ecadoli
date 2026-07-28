import 'package:flutter/material.dart';

import '../../../widgets/chat/chat_tile.dart';

class ChatListScreen extends StatelessWidget {
  const ChatListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      appBar: AppBar(
        title: const Text(
          "Chats",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),

      body: ListView(
        children: const [

          ChatTile(
            username: "Ahmed",
            lastMessage: "مرحبا، كيف حالك؟",
            time: "10:30",
          ),

          ChatTile(
            username: "Sara",
            lastMessage: "رأيت منشورك الجديد",
            time: "09:15",
          ),

          ChatTile(
            username: "Mohamed",
            lastMessage: "شكرا لك 👍",
            time: "أمس",
          ),

          ChatTile(
            username: "Lina",
            lastMessage: "دعنا نتحدث لاحقا",
            time: "الاثنين",
          ),
        ],
      ),
    );
  }
}