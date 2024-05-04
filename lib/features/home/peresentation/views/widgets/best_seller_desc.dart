import 'package:bookly/core/styles.dart';
import 'package:bookly/features/home/peresentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BestSellerDesc extends StatelessWidget {
  const BestSellerDesc({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * .5,
            child: const Text('Harry Potter and The Goblet of Fire',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Styles.textStyle18),
          ),
          const Opacity(
            opacity: .7,
            child: Text(
              'J.K Rowiling',
              style: Styles.textStyle16,
            ),
          ),
          Row(
            children: [
              Text(
                '19.99€',
                style:
                    Styles.textStyle118.copyWith(fontWeight: FontWeight.bold),
              ),
              const Spacer(),
             const BookRating(),
            ],
          ),
        ],
      ),
    );
  }
}
