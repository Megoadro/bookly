import 'package:bookly/core/styles.dart';
import 'package:bookly/features/home/peresentation/views/widgets/book_details_Simlar_list_view_section.dart';
import 'package:bookly/features/home/peresentation/views/widgets/book_details_custom_app_bar.dart';
import 'package:bookly/features/home/peresentation/views/widgets/book_details_list_view.dart';
import 'package:bookly/features/home/peresentation/views/widgets/book_details_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                BookDetailsCustomAppBar(),
                SizedBox(
                  height: 33,
                ),
                BookDetailsSection(),
                Expanded(
                  child: SizedBox(
                    height: 18,
                  ),
                ),
                BookDetailsSimilarListViewSection()
              ],
            ),
          ),
        )
      ],
    );
  }
}
