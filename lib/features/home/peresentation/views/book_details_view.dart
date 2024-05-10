import 'package:bookly/features/home/peresentation/views/widgets/book_datails_body.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BookDetailsBody(),
    );
  }
}
