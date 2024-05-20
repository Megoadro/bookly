import 'package:bookly/core/utils/router.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/peresentation/views/widgets/best_seller_desc.dart';
import 'package:bookly/features/home/peresentation/views/widgets/best_seller_image.dart';
import 'package:bookly/features/home/peresentation/views/widgets/book_rating.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(
          AppRouters.kBookDetailsView,
          extra: bookModel,
        );
      },
      child: SizedBox(
        height: 125,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: [
              BestSellerImage(
                imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BestSellerDesc(
                      title: bookModel.volumeInfo.title!,
                      authName: bookModel.volumeInfo.authors![0],
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: [
                        Text(
                          'Free',
                          style: Styles.textStyle118
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        //  const SizedBox(width: 70,),
                        BookRating(
                          count: bookModel.volumeInfo.ratingsCount ?? 0,
                          rate: bookModel.volumeInfo.averageRating ?? 0,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
