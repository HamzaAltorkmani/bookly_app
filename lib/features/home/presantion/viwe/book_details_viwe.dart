import 'package:bookly_app/features/home/presantion/viwe/widget/book_details_viwe_body.dart';
import 'package:flutter/material.dart';

class BookDetailsViwe extends StatelessWidget {
  const BookDetailsViwe({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: BookDetailsViweBody(),
      ),
    );
  }
}
