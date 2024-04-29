import 'package:bookly/features/home/peresentation/views/widgets/book_item.dart';
import 'package:flutter/material.dart';

class BookListView extends StatelessWidget {
  const BookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .28,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const BookItem();
          }),
    );
  }
}