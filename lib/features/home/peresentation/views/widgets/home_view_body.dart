import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/peresentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly/features/home/peresentation/views/widgets/book_list_view.dart';
import 'package:bookly/features/home/peresentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                BookListView(),
                SizedBox(
                  height: 18,
                ),
                Text(
                  'Best Seller',
                  style: Styles.textStyle22,
                ),
              ],
            ),
          ),
        ),
        SliverFillRemaining(
          child: BestSellerListView(),
        ),
      ],
    );
  }
}
