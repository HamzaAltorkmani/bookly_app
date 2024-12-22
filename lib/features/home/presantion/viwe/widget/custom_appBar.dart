import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.all(18.0.r),
      child: SafeArea(
        child: Row(
          children: [
            SvgPicture.asset(AssetsData.logo),
            const Spacer(),
            GestureDetector(
              onTap: () {},
              child: SvgPicture.asset('assets/icons/search.svg'),
            )
          ],
        ),
      ),
    );
  }
}
