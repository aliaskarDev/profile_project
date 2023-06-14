import 'package:flutter/material.dart';
import 'package:flutter_profile_project/ui/colors/colors.dart';
import 'package:flutter_profile_project/ui/texstyle/textstyle.dart';

class UserPosts extends StatelessWidget {
  const UserPosts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Посты',
              style: AppTextStyle.style600w14.copyWith(
                color: AppColors.color000000,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/images/post8.png',
              scale: 3.7,
            ),
            Image.asset(
              'assets/images/post5.png',
              scale: 3.7,
            ),
            Image.asset(
              'assets/images/post3.png',
              scale: 3.7,
            ),
          ],
        ),
        const SizedBox(height: 7),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/images/post9.png',
              scale: 3.7,
            ),
            Image.asset(
              'assets/images/post7.png',
              scale: 3.7,
            ),
            Image.asset(
              'assets/images/post2.png',
              scale: 3.7,
            ),
          ],
        ),
        const SizedBox(height: 7),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/images/post6.png',
              scale: 3.7,
            ),
            Image.asset(
              'assets/images/post1.png',
              scale: 3.7,
            ),
            Image.asset(
              'assets/images/post4.png',
              scale: 3.7,
            ),
          ],
        ),
        const SizedBox(height: 25)
      ],
    );
  }
}
