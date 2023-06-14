import 'package:flutter/material.dart';
import 'package:flutter_profile_project/features/profile/widgets/user_info_container.dart';
import 'package:flutter_profile_project/features/profile/widgets/user_interest.dart';
import 'package:flutter_profile_project/features/profile/widgets/user_posts.dart';

const String _myProfile = 'Мой профиль';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      appBar: AppBar(
        backgroundColor: const Color(0xffF5F5F5),
        centerTitle: true,
        title: const Text(
          _myProfile,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: ListView(
        children: const [
          Center(
            child: Padding(
              padding: EdgeInsets.only(
                left: 29,
                right: 28,
              ),
              child: Column(
                children: [
                  SizedBox(height: 28),
                  UserInfoContainer(),
                  SizedBox(height: 24),
                  UserInteres(),
                  SizedBox(height: 24),
                  UserPosts(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
