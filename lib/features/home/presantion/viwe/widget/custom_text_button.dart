import 'dart:ui';

import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.text,
    required this.backgroundColor,
    this.fontSize,
    this.borderRadius, this.colorText,
  });
  final String text;
  final Color backgroundColor;
  final double? fontSize;
  final BorderRadius? borderRadius;
  final Color? colorText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65.h,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ??
                   BorderRadius.only(
                    topLeft: Radius.circular(10.r),
                    bottomLeft: Radius.circular(10.r),
                  ),
            ),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: Style.titleMedium.copyWith(
            color: colorText,
            fontSize: fontSize ?? 20.sp,
          ),
        ),
      ),
    );
  }
}
