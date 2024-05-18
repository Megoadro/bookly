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
          child: const BestSellerImage(
            imageUrl:
                'https://marketplace.canva.com/EAFaQMYuZbo/1/0/1003w/canva-brown-rusty-mystery-novel-book-cover-hG1QhA7BiBU.jpg',
          ),
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
          count: 1,
          rate: 1,
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
