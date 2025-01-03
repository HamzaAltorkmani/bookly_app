import 'dart:async';
import 'package:bookly_app/constans.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class SplashViweBody extends StatefulWidget {
  const SplashViweBody({super.key});

  @override
  _SplashViweBodyState createState() => _SplashViweBodyState();
}

class _SplashViweBodyState extends State<SplashViweBody>
    with TickerProviderStateMixin {
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
      curve: Curves.bounceInOut,
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
      curve: Curves.bounceIn,
    );

    // بدء Animation للنص بعد انتهاء Animation الشعار
    _logoController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _textController.forward();
      }
    });

    // الانتقال إلى الشاشة الرئيسية بعد 4 ثوانٍ
    Timer(const Duration(seconds: 4), () {
      GoRouter.of(context).pushReplacement('/homeViwe');
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
                  child: SvgPicture.asset(
                    AssetsData.logo,
                  ),
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
