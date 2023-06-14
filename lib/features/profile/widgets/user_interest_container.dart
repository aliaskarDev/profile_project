import 'package:flutter/material.dart';
import 'package:flutter_profile_project/ui/colors/colors.dart';
import 'package:flutter_profile_project/ui/texstyle/textstyle.dart';

class UserInterestContainer extends StatelessWidget {
  const UserInterestContainer(
      {super.key,
      required this.title,
      required this.vertical,
      required this.horizontal});

  final String title;
  final double vertical;
  final double horizontal;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
        child: Text(
          title,
          style: AppTextStyle.style600w16.copyWith(
            color: AppColors.colorFF9500,
          ),
        ),
      ),
    );
  }
}
