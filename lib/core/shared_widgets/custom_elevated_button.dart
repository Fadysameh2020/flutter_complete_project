import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/styles.dart';

class CustomElevatedButton extends StatelessWidget {
  final double? borderRadius;
  final Color? backgroundColor;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? buttonWidth;
  final double? buttonHeight;
  final String buttonText;
  final TextStyle? textStyle;
  final VoidCallback? onPressed;
  final bool isActive; // New property for button activation

  const CustomElevatedButton({
    super.key,
    this.borderRadius,
    this.backgroundColor,
    this.horizontalPadding,
    this.verticalPadding,
    this.buttonHeight,
    this.buttonWidth,
    this.textStyle,
    required this.buttonText,
    required this.onPressed,
    this.isActive = true, // Default to active
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonWidth?.w ?? double.infinity,
      height: buttonHeight ?? 50.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          backgroundColor:
          isActive ? (backgroundColor ?? ColorsManager.mainColor) : ColorsManager.lighterGray,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 16.0),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding?.w ?? 12.w,
            vertical: verticalPadding?.h ?? 14.h,
          ),
        ),
        onPressed: isActive ? onPressed : null,
        child: Text(
          buttonText,
          style: TextStyles.font16WhiteSemiBold,
        ),
      ),
    );
  }
}
