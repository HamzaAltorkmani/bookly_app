import 'package:bookly_app/features/home/presantion/viwe/widget/custom_listViwe_you_can_also_like.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListViweBuilderYouCanAlsoLike extends StatelessWidget {
  const CustomListViweBuilderYouCanAlsoLike({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0.w),
              child: const CustomListViweYouCanAlsoLike(),
            );
          }),
    );
  }
}
