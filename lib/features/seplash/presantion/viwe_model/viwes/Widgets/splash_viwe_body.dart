import 'package:bookly_app/constans.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/features/home/presantion/viwe_model/viwe/home_viwe.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:async';

import 'package:flutter_svg/flutter_svg.dart';

class SplashViweBody extends StatefulWidget {
  const SplashViweBody({super.key});

  @override
  _SplashViweBodyState createState() => _SplashViweBodyState();
}

class _SplashViweBodyState extends State<SplashViweBody> with TickerProviderStateMixin {
  late AnimationController _logoController;
  late AnimationController _textController;
  late Animation<double> _logoAnimation;
  late Animation<double> _textAnimation;

  @override
  void initState() {
    super.initState();

    // إعداد AnimationController للشعار
    _logoController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    // إعداد Animation للشعار
    _logoAnimation = CurvedAnimation(
      parent: _logoController,
      curve: Curves.easeInOut,
    );

    // بدء Animation للشعار
    _logoController.forward();

    // إعداد AnimationController للنص
    _textController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    // إعداد Animation للنص
    _textAnimation = CurvedAnimation(
      parent: _textController,
      curve: Curves.easeInOut,
    );

    // بدء Animation للنص بعد انتهاء Animation الشعار
    _logoController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _textController.forward();
      }
    });

    // الانتقال إلى الشاشة الرئيسية بعد 4 ثوانٍ
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeViwe()),
      );
    });
  }

  @override
  void dispose() {
    _logoController.dispose();
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kPrimaryColor,
        child: Stack(
          children: <Widget>[
            Center(
              child: AnimatedBuilder(
                animation: _logoAnimation,
                builder: (context, child) {
                  return Transform.scale(
                    scale: _logoAnimation.value,
                    child: child,
                  );
                },
                child: SizedBox(
                  height: 200.h,
                  width: 200.w,
                  child: SvgPicture.asset( AssetsData.logo,),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 50.0),
                child: FadeTransition(
                  opacity: _textAnimation,
                  child: SlideTransition(
                    position: Tween<Offset>(
                      begin: const Offset(0, 1),
                      end: const Offset(0, 0),
                    ).animate(_textAnimation),
                    child: Text(
                      'Welcome to Bookly App',
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
