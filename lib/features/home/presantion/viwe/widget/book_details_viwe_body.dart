import 'package:bookly_app/constans.dart';
import 'package:bookly_app/core/utils/style.dart';
import 'package:bookly_app/features/home/presantion/viwe/widget/custom_appBar_details_viwe.dart';
import 'package:bookly_app/features/home/presantion/viwe/widget/custom_book_image.dart';
import 'package:bookly_app/features/home/presantion/viwe/widget/custom_box_actionbutton.dart';
import 'package:bookly_app/features/home/presantion/viwe/widget/custom_listViweBuilder_you_can_also_like.dart';
import 'package:bookly_app/features/home/presantion/viwe/widget/custom_listViwe_you_can_also_like.dart';
import 'package:bookly_app/features/home/presantion/viwe/widget/custom_rate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailsViweBody extends StatelessWidget {
  const BookDetailsViweBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0.w),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const CustomAppBarDetailsViwe(),
            SizedBox(
              height: 10.h,
            ),
            const CustomBookImage(
              height: 255,
              width: 162,
              widthBorder: 1.5,
            ),
            SizedBox(height: 40.h),
            Text(
              'The Jungle Book',
              style: Style.titleMedium.copyWith(
                fontFamily: kSectraFount,
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 5.h),
            Text(
              'Rudyard Kipling',
              style: Style.titleMedium.copyWith(
                fontSize: 18.sp,
                fontWeight: FontWeight.normal,
                color: Colors.white60,
              ),
            ),
            SizedBox(height: 14.h),
            const CustomRate(
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            SizedBox(height: 35.h),
            const CustomBoxActionButton(),
            SizedBox(height: 49.h),
            Align(
              alignment: AlignmentDirectional.topStart,
              child: Text(
                'You can also like',
                style: Style.titleMedium.copyWith(fontSize: 14.sp),
              ),
            ),
            SizedBox(height: 16.h),
            const CustomListViweBuilderYouCanAlsoLike(),
          ],
        ),
      ),
    );
  }
}

