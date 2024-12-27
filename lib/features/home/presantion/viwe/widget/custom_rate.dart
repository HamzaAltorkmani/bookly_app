import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRate extends StatelessWidget {
  const CustomRate({
    super.key, required this.mainAxisAlignment,
  });
  final MainAxisAlignment mainAxisAlignment ;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          Icons.star,
          color: Color(0xffFFDD4F),
        ),
        SizedBox(width: 5.w),
        Text(
          '4.8',
          style: Style.titleMedium.copyWith(
            fontSize: 16.sp,
          ),
        ),
        SizedBox(width: 10.w),
        Text(
          '(2390)',
          style: Style.titleMedium.copyWith(
            fontSize: 14.sp,
            color: Colors.white60,
          ),
        ),
      ],
    );
  }
}
