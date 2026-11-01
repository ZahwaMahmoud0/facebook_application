import 'package:flutter/material.dart';
import '../core/app_colors.dart';

class CreateStoryItem extends StatelessWidget {
  final String userImage;
  const CreateStoryItem({super.key, required this.userImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.black12),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final h = constraints.maxHeight;
          return Stack(
            children: [
              Column(
                children: [
                  // نسبة 3 للصورة
                  Expanded(
                    flex: 3,
                    child: SizedBox(
                      width: double.infinity,
                      child: Image.asset(userImage, fit: BoxFit.cover),
                    ),
                  ),
                  // نسبة 1 للنص
                  const Expanded(
                    flex: 1,
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          'Create a\nStory',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // الزرار الدايري الأزرق على الحد بين الصورة والنص
              Positioned(
                top: h * 0.75 - 14,
                left: 0,
                right: 0,
                child: const Center(
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: AppColors.white,
                    child: CircleAvatar(
                      radius: 12,
                      backgroundColor: AppColors.blue,
                      child:
                          Icon(Icons.add, size: 16, color: AppColors.white),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}