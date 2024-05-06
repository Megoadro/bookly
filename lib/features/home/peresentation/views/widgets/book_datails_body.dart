import 'package:bookly/core/styles.dart';
import 'package:bookly/features/home/peresentation/views/widgets/best_seller_image.dart';
import 'package:bookly/features/home/peresentation/views/widgets/book_details_custom_app_bar.dart';
import 'package:bookly/features/home/peresentation/views/widgets/book_details_list_view.dart';
import 'package:bookly/features/home/peresentation/views/widgets/book_price_check.dart';
import 'package:bookly/features/home/peresentation/views/widgets/book_rating.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const BookDetailsCustomAppBar(),
                const SizedBox(
                  height: 33,
                ),
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
                  style:
                      Styles.textStyle16.copyWith(fontStyle: FontStyle.italic),
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
                const Expanded(
                  child: SizedBox(
                    height: 18,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You can also like',
                    style: Styles.textStyle118
                        .copyWith(fontWeight: FontWeight.w900),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const BookDetailsListView(),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
