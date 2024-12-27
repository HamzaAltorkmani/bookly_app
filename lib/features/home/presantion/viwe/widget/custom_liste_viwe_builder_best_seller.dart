import 'package:bookly_app/features/home/presantion/viwe/widget/custom_best_seller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListeViweBuilderBestSeller extends StatelessWidget {
  const CustomListeViweBuilderBestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return const CustomBestSeller();
        },
      ),
    );
  }
}
