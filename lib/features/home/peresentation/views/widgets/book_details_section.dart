import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/peresentation/views/widgets/best_seller_image.dart';
import 'package:bookly/features/home/peresentation/views/widgets/book_price_check.dart';
import 'package:bookly/features/home/peresentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .14),
          child: const BestSellerImage(),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'The Jungle Book',
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          'Rudyard Kipling',
          style: Styles.textStyle16.copyWith(fontStyle: FontStyle.italic),
        ),
        const SizedBox(
          height: 8,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 22,
        ),
        const BookPriceCheck(),
      ],
    );
  }
}
