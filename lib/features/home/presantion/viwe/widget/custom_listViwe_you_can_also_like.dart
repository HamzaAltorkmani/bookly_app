import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListViweYouCanAlsoLike extends StatelessWidget {
  const CustomListViweYouCanAlsoLike({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 112.h,
      width: 70.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(
              color: Colors.white,
              width: 1.5.r
          )
      ),
      child: Image.asset('assets/images/Book 1 High.png',fit: BoxFit.fill,),
    );
  }
}
