import 'package:flutter/material.dart';

class WhatsInMind extends StatelessWidget {
  const WhatsInMind({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          // Circular avatar بصورة اليوزر
          const CircleAvatar(
            radius: 22,
            backgroundImage: AssetImage('assets/images/user.jpg'),
          ),
          const SizedBox(width: 8),
          // TextField من غير أي decoration خارجي
          const Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "What's in Your Mind?",
                filled: false,
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
          // Images icon
          Image.asset('assets/images/gallery.png', width: 28, height: 28),
        ],
      ),
    );
  }
}