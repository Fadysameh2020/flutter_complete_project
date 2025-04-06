import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../gen/assets.gen.dart';

class LogoAndName extends StatelessWidget {
  const LogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          Assets.icons.logoIcon,
          width: 40.w, // Adjust width
          height: 40.h, // Adjust height
        ),
        SizedBox(width: 8.w),
        Text('DocDoc', style: TextStyles.font24BlackBold),
      ],
    );
  }
}
