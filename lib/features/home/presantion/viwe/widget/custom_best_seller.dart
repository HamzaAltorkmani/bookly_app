import 'package:bookly_app/constans.dart';
import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBestSeller extends StatelessWidget {
  const CustomBestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(bottom: 15.0.h),
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
                Text(
                  'Harry Potter\nand the Goblet of Fire kljjklkljkljkjkjkkjl',
                  maxLines: 2,
                  style: Style.titleMedium.copyWith(
                    fontFamily: kBestSellerFount,
                    fontSize: 18.sp,
                  ),
                ),
                Text(
                  'J.K. Rowling',
                  style: Style.titleMedium.copyWith(
                    fontSize: 14.sp,
                    color: Colors.white60,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '19.99 €',
                      style: Style.titleMedium.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp,
                      ),
                    ),
                    SizedBox(width: 30.w),
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
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
