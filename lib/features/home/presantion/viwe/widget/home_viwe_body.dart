import 'package:bookly_app/core/utils/style.dart';
import 'package:bookly_app/features/home/presantion/viwe/widget/custom_appBar.dart';
import 'package:bookly_app/features/home/presantion/viwe/widget/custom_listViwe_Bilder.dart';
import 'package:bookly_app/features/home/presantion/viwe/widget/custom_liste_viwe_builder_best_seller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeViweBody extends StatelessWidget {
  const HomeViweBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          SizedBox(height: 20.h),
          const CustomListViewBuilder(),
          SizedBox(height: 30.h),
          Text(
            'Best Seller',
            style: Style.titleMedium,
          ),
          const CustomListeViweBuilderBestSeller(),
        ],
      ),
    );
  }
}
