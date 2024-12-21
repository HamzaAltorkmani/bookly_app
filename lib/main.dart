import 'package:bookly_app/constans.dart';
import 'package:bookly_app/features/seplash/presantion/viwe_model/viwes/splash_viwe.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) {
        return GetMaterialApp(
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor:kPrimaryColor,
          ),
          debugShowCheckedModeBanner: false,
          home: const SplashViwe(),
        );
      },
    );
  }
}
