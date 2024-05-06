import 'package:bookly/core/styles.dart';
import 'package:bookly/features/home/peresentation/views/widgets/book_details_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsSimilarListViewSection extends StatelessWidget {
  const BookDetailsSimilarListViewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: Styles.textStyle118
              .copyWith(fontWeight: FontWeight.w900),
        ),
                const SizedBox(
                  height: 10,
                ),
                const BookDetailsListView(),
                const SizedBox(
                  height: 10,
                ),
      ],
    );
  }
}