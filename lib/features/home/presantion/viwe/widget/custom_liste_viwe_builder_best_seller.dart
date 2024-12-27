import 'package:bookly_app/features/home/presantion/viwe/widget/custom_best_seller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListeViweBuilderBestSeller extends StatelessWidget {
  const CustomListeViweBuilderBestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 15.0.w),
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 6,
        itemBuilder: (context, index) {
          return const CustomBestSeller();
        },
      ),
    );
  }
}
