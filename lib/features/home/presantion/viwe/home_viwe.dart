import 'package:bookly_app/features/home/presantion/viwe/widget/custom_appBar.dart';
import 'package:flutter/material.dart';

class HomeViwe extends StatelessWidget {
  const HomeViwe({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body:  Column(
        children: [
          CustomAppBar(),

        ],
      ),
    );
  }
}

