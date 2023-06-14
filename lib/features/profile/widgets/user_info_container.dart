import 'package:flutter/material.dart';
import 'package:flutter_profile_project/constants/const.dart';
import 'package:flutter_profile_project/features/profile/widgets/lenght_of_follow.dart';
import 'package:flutter_profile_project/ui/colors/colors.dart';
import 'package:flutter_profile_project/ui/texstyle/textstyle.dart';

class UserInfoContainer extends StatelessWidget {
  const UserInfoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Stack(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(
                      'assets/images/user_profile_photo.png',
                    ),
                  ),
                  Positioned(
                    right: -0.6,
                    bottom: 3,
                    child: Image.asset(
                      'assets/images/user_profile_camera.png',
                      scale: 3.5,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      ' Айбек Темиров',
                      style: AppTextStyle.style600w18.copyWith(
                        color: AppColors.color000000,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Кыргызстан, Бишкек',
                      style: AppTextStyle.style600w12.copyWith(
                        color: AppColors.color000000,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            Image.asset(
              'assets/images/all_grade_icon.png',
              scale: 4.5,
            ),
          ],
        ),
        const SizedBox(height: 26),
        const Row(
          children: [
            LenghtOfFollowers(firstTitle: '87', secondTitle: 'Постов'),
            SizedBox(
              height: 43,
              child: VerticalDivider(
                color: Colors.black,
                thickness: 1,
              ),
            ),
            LenghtOfFollowers(firstTitle: '870', secondTitle: 'Подписчики'),
            SizedBox(
              height: 43,
              child: VerticalDivider(
                color: Colors.black,
                thickness: 1,
              ),
            ),
            LenghtOfFollowers(firstTitle: '350', secondTitle: 'Друзья'),
          ],
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(
            right: 15,
            left: 3,
          ),
          child: Text(
            aboutUser,
            style: AppTextStyle.style400w13.copyWith(
              color: AppColors.color000000,
            ),
          ),
        ),
      ],
    );
  }
}
