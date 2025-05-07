import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theming/styles.dart';
import '../../../../generated/assets.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, Omar!',
              style: TextStyles.font18DarkBlueBold,
            ),
            Text(
              'How Are you Today?',
              style: TextStyles.font12GrayRegular,
            ),
          ],
        ),
        // const Spacer(),
        CircleAvatar(
          radius: 24.0,
          backgroundColor: ColorsManager.grey_8E8E8E,
          child: SvgPicture.asset(
              Assets.iconsNotifications,
          ),
        )
      ],
    );
  }
}