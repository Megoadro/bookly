import 'package:bookly/core/styles.dart';
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
                const BookDetailsSection(),
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
