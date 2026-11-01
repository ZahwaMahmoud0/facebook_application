import 'package:flutter/material.dart';
import 'create_story_item.dart';
import 'story_item.dart';

class StoriesList extends StatelessWidget {
  const StoriesList({super.key});

 
  static const _stories = [
    ['assets/images/story1.png', 'assets/images/user1.jpg'],
    ['assets/images/story2.jpg', 'assets/images/user2.jpg'],
    ['assets/images/story3.jpg', 'assets/images/user3.jpg'],
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        itemCount: _stories.length + 1,
        separatorBuilder: (_, __) => const SizedBox(width: 8),
        itemBuilder: (_, index) {
          if (index == 0) {
            return const CreateStoryItem(userImage: 'assets/images/user.jpg');
          }
          final story = _stories[index - 1];
          return StoryItem(storyImage: story[0], userImage: story[1]);
        },
      ),
    );
  }
}