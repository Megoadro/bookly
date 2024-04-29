import 'package:bookly/core/styles.dart';
import 'package:bookly/features/home/peresentation/views/widgets/book_list_view.dart';
import 'package:bookly/features/home/peresentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/peresentation/views/widgets/book_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
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
            style: Styles.titleMeduim,
            
          ),
        ],
      ),
    );
  }
}


