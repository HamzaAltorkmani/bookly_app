import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListViweTop extends StatelessWidget {
  const CustomListViweTop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 220.h,
          width: 140.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
            border: Border.all(
              color: Colors.white,
              width: 1.5.w,
            ),
          ),
          child: Image.asset(
            'assets/images/Book 1 High.png',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 5,
          right: 3,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.r), // حواف مستديرة
            child: BackdropFilter(
              filter:
                  ImageFilter.blur(sigmaX: 8, sigmaY: 8), // تغبيش أفقي وعمودي
              child: Container(
                height: 40.h,
                width: 40.w,
                color:
                    Colors.white.withOpacity(0.2), // لون شبه شفاف فوق الخلفية
                alignment: Alignment.center,
                child: const Icon(
                  Icons.play_arrow_rounded,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
