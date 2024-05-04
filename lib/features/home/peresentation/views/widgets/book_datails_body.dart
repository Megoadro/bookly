import 'package:bookly/features/home/peresentation/views/widgets/book_details_custom_app_bar.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          BookDetailsCustomAppBar(),
          
        ],
      ),
    );
  }
}