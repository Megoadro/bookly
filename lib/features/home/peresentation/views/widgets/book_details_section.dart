import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/peresentation/views/widgets/best_seller_image.dart';
import 'package:bookly/features/home/peresentation/views/widgets/book_price_check.dart';
import 'package:bookly/features/home/peresentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
   final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .14),
          child:  BestSellerImage(
            imageUrl:bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
          ),
        ),
        const SizedBox(
          height: 20,
        ),
         Text(
          bookModel.volumeInfo.title!,
          style: Styles.textStyle30,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
           bookModel.volumeInfo.authors![0],
          style: Styles.textStyle16.copyWith(fontStyle: FontStyle.italic),
        ),
        const SizedBox(
          height: 8,
        ),  
         BookRating(
          count:bookModel.volumeInfo.ratingsCount ?? 0,
          rate: bookModel.volumeInfo.averageRating ?? 0,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 22,
        ),
         BookPriceCheck(
          bookModel: bookModel,
        ),
      ],
    );
  }
}
