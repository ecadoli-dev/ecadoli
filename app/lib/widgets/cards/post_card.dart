import 'package:flutter/material.dart';

import '../../models/post_model.dart';
import '../../core/theme/app_colors.dart';

class PostCard extends StatelessWidget {
  final PostModel post;

  const PostCard({
    super.key,
    required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 22,
                  backgroundColor: AppColors.primary,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        post.author.fullName,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "@${post.author.username}",
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.more_vert),
              ],
            ),

            const SizedBox(height: 16),

            Text(
              post.content,
              style: const TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Icon(
                      post.isLiked
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: post.isLiked
                          ? Colors.red
                          : Colors.grey,
                    ),
                    const SizedBox(width: 6),
                    Text("${post.likes}"),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.chat_bubble_outline),
                    const SizedBox(width: 6),
                    Text("${post.comments}"),
                  ],
                ),
                const Icon(Icons.send_outlined),
              ],
            ),
          ],
        ),
      ),
    );
  }
}