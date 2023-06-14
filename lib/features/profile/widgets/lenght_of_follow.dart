import 'package:flutter/material.dart';
import 'package:flutter_profile_project/ui/colors/colors.dart';
import 'package:flutter_profile_project/ui/texstyle/textstyle.dart';

class LenghtOfFollowers extends StatelessWidget {
  const LenghtOfFollowers({
    super.key,
    required this.firstTitle,
    required this.secondTitle,
  });

  final String firstTitle;
  final String secondTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 19),
      child: Column(
        children: [
          Text(
            firstTitle,
            style: AppTextStyle.style600w14.copyWith(
              color: AppColors.color000000,
            ),
          ),
          Text(
            secondTitle,
            style: AppTextStyle.style400w14.copyWith(
              color: AppColors.color000000,
            ),
          ),
        ],
      ),
    );
  }
}
