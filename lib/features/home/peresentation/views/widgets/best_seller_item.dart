import 'package:bookly/features/home/peresentation/views/widgets/best_seller_desc.dart';
import 'package:bookly/features/home/peresentation/views/widgets/best_seller_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 125,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            BestSellerImage(),
            SizedBox(
              width: 15,
            ),
            BestSellerDesc(),
          ],
        ),
      ),
    );
  }
}
