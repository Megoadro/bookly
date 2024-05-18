import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/peresentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BestSellerDesc extends StatelessWidget {
  const BestSellerDesc({
    super.key, required this.title, required this.authName,
  });
  final String title;
  final String authName;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * .5,
            child:  Text(title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Styles.textStyle18),
          ),
           Opacity(
            opacity: .7,
            child: Text(
              authName,
              style: Styles.textStyle16,
            ),
          ),
          Row(
            children: [
              Text(
                'Free',
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
