import 'package:bookly/features/home/peresentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/peresentation/views/widgets/book_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children:  [
          CustomAppBar(),
          BookItem(),
      ],
    );
  }
  
}

