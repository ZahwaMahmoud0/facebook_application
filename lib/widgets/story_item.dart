import 'package:flutter/material.dart';
import '../core/app_colors.dart';

class StoryItem extends StatelessWidget {
  final String storyImage;
  final String userImage;
  const StoryItem(
      {super.key, required this.storyImage, required this.userImage});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: SizedBox(
        width: 110,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(storyImage, fit: BoxFit.cover, cacheWidth: 300),
            Positioned(
              top: 8,
              left: 8,
              child: Container(
                padding: const EdgeInsets.all(2),
                decoration: const BoxDecoration(
                  color: AppColors.blue,
                  shape: BoxShape.circle,
                ),
                child: CircleAvatar(
                  radius: 16,
                  backgroundImage: AssetImage(userImage),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}