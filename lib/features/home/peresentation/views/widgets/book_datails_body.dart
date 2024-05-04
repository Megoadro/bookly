import 'package:bookly/features/home/peresentation/views/widgets/best_seller_image.dart';
import 'package:bookly/features/home/peresentation/views/widgets/book_details_custom_app_bar.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return  Padding(
      padding:  const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const BookDetailsCustomAppBar(),
          const SizedBox(height: 33,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width*.14),
            child: const BestSellerImage(),
          ),
        ],
      ),
    );
  }
}