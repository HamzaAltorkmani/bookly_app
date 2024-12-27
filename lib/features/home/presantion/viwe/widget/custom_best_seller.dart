import 'package:bookly_app/constans.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/style.dart';
import 'package:bookly_app/features/home/presantion/viwe/widget/custom_rate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CustomBestSeller extends StatelessWidget {
  const CustomBestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(bottom: 15.0.h),
      child: GestureDetector(
        onTap: (){
          GoRouter.of(context).push(AppRouter.kBookDetailsView);
        },
        child: Row(
          children: [
            Container(
              height: 115.h,
              width: 80.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(
                  color: Colors.white,
                  width: 1.w,
                ),
              ),
              child: Image.asset(
                'assets/images/Book 2 High.png',
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              width: 25.w,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 199.w,
                    child: Text(
                      'Harry Potter\nand the Goblet of Fire',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Style.titleMedium.copyWith(
                        fontFamily: kSectraFount,
                        fontSize: 18.sp,
                      ),
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    'J.K. Rowling',
                    style: Style.titleMedium.copyWith(
                      fontSize: 14.sp,
                      color: Colors.white60,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start, // توزيع العناصر في الـ Row
                    children: [
                      Text(
                        '19.99 €',
                        style: Style.titleMedium.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.sp,
                        ),
                      ),
                      SizedBox(width: 30.w),
                      const CustomRate(mainAxisAlignment: MainAxisAlignment.start,),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

