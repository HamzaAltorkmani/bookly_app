import 'package:bookly_app/features/home/presantion/viwe/widget/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListViewBuilder extends StatelessWidget {
  const CustomListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
        itemCount: 5,
          itemBuilder:(context,index){
            return Padding(
              padding:  EdgeInsets.symmetric(horizontal: 5.0.w),
              child: const CustomBookImage(height: 220, width: 140, widthBorder: 1.5,),
            );
          }
      ),
    );
  }
}

