import 'package:bookly/features/home/peresentation/views/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';

class SearchResults extends StatelessWidget {
  const SearchResults({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: 10,
          itemBuilder: (context, index) {
            return const BestSellerItem();
          }),
    );
  }
}
