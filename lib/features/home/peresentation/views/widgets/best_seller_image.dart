import 'package:bookly/core/utils/assets_app.dart';
import 'package:flutter/material.dart';

class BestSellerImage extends StatelessWidget {
  const BestSellerImage({super.key, required this.imageUrl,});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 4,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image:  DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                imageUrl,
              ),
            )),
      ),
    );
  }
}
