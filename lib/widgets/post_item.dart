import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../core/app_colors.dart';

class PostItem extends StatefulWidget {
  final String profileImage;
  final String name;
  final String time;
  final String postImage;

  const PostItem({
    super.key,
    required this.profileImage,
    required this.name,
    required this.time,
    required this.postImage,
  });

  @override
  State<PostItem> createState() => _PostItemState();
}

class _PostItemState extends State<PostItem> {
  bool _liked = false;
  bool _saved = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage(widget.profileImage),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.name,
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        height: 1.0,
                        letterSpacing: 0,
                        color: AppColors.black,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        Text('${widget.time} . ',
                            style: const TextStyle(
                                color: AppColors.gray, fontSize: 12)),
                        const Icon(Icons.public,
                            size: 12, color: AppColors.gray),
                      ],
                    ),
                  ],
                ),
              ),
              const Icon(Icons.more_horiz, color: AppColors.black),
            ],
          ),
        ),
        Image.asset(
          widget.postImage,
          width: double.infinity,
          height: 300,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          child: Row(
            children: [
              GestureDetector(
                onTap: () => setState(() => _liked = !_liked),
                child: Icon(
                  _liked ? CupertinoIcons.heart_fill : CupertinoIcons.heart,
                  size: 26,
                  color: _liked ? Colors.red : AppColors.black,
                ),
              ),
              const SizedBox(width: 18),
              const Icon(CupertinoIcons.chat_bubble,
                  size: 25, color: AppColors.black),
              const SizedBox(width: 18),
              const Icon(CupertinoIcons.paperplane,
                  size: 25, color: AppColors.black),
              const Spacer(),
              GestureDetector(
                onTap: () => setState(() => _saved = !_saved),
                child: Icon(
                  _saved
                      ? CupertinoIcons.bookmark_fill
                      : CupertinoIcons.bookmark,
                  size: 25,
                  color: AppColors.black,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}