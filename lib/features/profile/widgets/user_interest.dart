import 'package:flutter/material.dart';
import 'package:flutter_profile_project/features/profile/widgets/user_interest_container.dart';
import 'package:flutter_profile_project/ui/colors/colors.dart';
import 'package:flutter_profile_project/ui/texstyle/textstyle.dart';

class UserInteres extends StatelessWidget {
  const UserInteres({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Интересы',
              style: AppTextStyle.style600w14.copyWith(
                color: AppColors.color000000,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              UserInterestContainer(
                title: 'Музыка',
                horizontal: 12,
                vertical: 12,
              ),
              UserInterestContainer(
                title: 'Спорт',
                horizontal: 12,
                vertical: 10,
              ),
              UserInterestContainer(
                title: 'Путешествия',
                horizontal: 12,
                vertical: 10,
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              UserInterestContainer(
                title: 'Развлечения',
                horizontal: 12,
                vertical: 10,
              ),
              UserInterestContainer(
                title: 'Кино',
                horizontal: 12,
                vertical: 10,
              ),
              UserInterestContainer(
                title: 'Книги',
                horizontal: 12,
                vertical: 10,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
