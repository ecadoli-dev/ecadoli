import 'package:flutter/material.dart';

import '../../core/theme/app_colors.dart';

class ChatTile extends StatelessWidget {
  final String username;
  final String lastMessage;
  final String time;

  const ChatTile({
    super.key,
    required this.username,
    required this.lastMessage,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),

      leading: const CircleAvatar(
        radius: 28,
        backgroundColor: AppColors.primary,
        child: Icon(
          Icons.person,
          color: Colors.white,
        ),
      ),

      title: Text(
        username,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),

      subtitle: Text(
        lastMessage,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),

      trailing: Text(
        time,
        style: TextStyle(
          color: Colors.grey.shade600,
          fontSize: 12,
        ),
      ),

      onTap: () {},
    );
  }
}