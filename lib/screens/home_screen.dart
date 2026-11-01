import 'package:flutter/material.dart';
import '../core/app_colors.dart';
import '../widgets/post_item.dart';
import '../widgets/stories_list.dart';
import '../widgets/whats_in_mind.dart';

Widget _tabIcon(IconData icon) => SizedBox(
      width: 30,
      height: 25.5,
      child: Icon(icon, size: 25.5),
    );

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.white,
          elevation: 0,
          scrolledUnderElevation: 0,
          titleSpacing: 16,
          title: Align(
            alignment: Alignment.centerLeft,
            child: Image.asset('assets/images/facebook_name.png', height: 28),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add_circle, color: AppColors.black),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search, color: AppColors.black),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.messenger, color: AppColors.black),
            ),
          ],
          bottom: TabBar(
            indicatorColor: AppColors.blue,
            labelColor: AppColors.blue,
            unselectedLabelColor: AppColors.gray,
            tabs: [
              Tab(icon: _tabIcon(Icons.home)),
              Tab(icon: _tabIcon(Icons.ondemand_video_outlined)),
              Tab(icon: _tabIcon(Icons.storefront_outlined)),
              Tab(icon: _tabIcon(Icons.account_circle_outlined)),
              Tab(icon: _tabIcon(Icons.notifications_none)),
              const Tab(
                icon: CircleAvatar(
                  radius: 13,
                  backgroundImage: AssetImage('assets/images/user.jpg'),
                ),
              ),
            ],
          ),
        ),
        body: ListView(
          children: const [
            WhatsInMind(),
            Divider(height: 1, thickness: 1),
            StoriesList(),
            Divider(height: 1, thickness: 1),
            PostItem(
              profileImage: 'assets/images/route_profile.jpg',
              name: 'Route',
              time: '8h',
              postImage: 'assets/images/route_post.jpg',
            ),
            Divider(height: 1, thickness: 1),
            PostItem(
              profileImage: 'assets/images/route_profile.jpg',
              name: 'Route',
              time: '8h',
              postImage: 'assets/images/route_post.jpg',
            ),
            Divider(height: 1, thickness: 1),
            PostItem(
              profileImage: 'assets/images/route_profile.jpg',
              name: 'Route',
              time: '8h',
              postImage: 'assets/images/route_post.jpg',
            ),
          ],
        ),
      ),
    );
  }
}