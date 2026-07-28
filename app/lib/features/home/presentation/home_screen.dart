import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../../../data/mock_data.dart';
import '../../../widgets/cards/post_card.dart';
import '../../../widgets/stories/story_avatar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'ecadoli',
          style: TextStyle(
            color: AppColors.primary,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.black87,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none,
              color: Colors.black87,
            ),
          ),
        ],
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [

          const Text(
            "Stories",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 16),

          SizedBox(
            height: 95,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [

                StoryAvatar(
                  username: "You",
                  isMyStory: true,
                ),

                StoryAvatar(username: "Ahmed"),
                StoryAvatar(username: "Sara"),
                StoryAvatar(username: "Mohamed"),
                StoryAvatar(username: "Lina"),
                StoryAvatar(username: "Adam"),
                StoryAvatar(username: "Yasmine"),
              ],
            ),
          ),

          const SizedBox(height: 24),

          const Text(
            "Posts",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 16),

          ...MockData.posts.map(
            (post) => PostCard(post: post),
          ),
        ],
      ),
    );
  }
}