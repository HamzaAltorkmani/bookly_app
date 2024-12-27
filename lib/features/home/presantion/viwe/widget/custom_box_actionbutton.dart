import 'package:bookly_app/features/home/presantion/viwe/widget/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBoxActionButton extends StatelessWidget {
  const CustomBoxActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0.w),
      child: Row(
        children: [
          const Expanded(
            child: CustomTextButton(
              text: '19.99€',
              colorText: Colors.black,
              backgroundColor: Colors.white,
            ),
          ),
          Expanded(
            child: CustomTextButton(
              text: 'Free preview',
              colorText: Colors.white,
              backgroundColor: const Color(0xffEF8262),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10.r),
                bottomRight: Radius.circular(10.r),
              ),
              fontSize: 16.sp,
            ),
          ),
        ],
      ),
    );
  }
}
