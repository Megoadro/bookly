import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
  const BookItem({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: ClipRRect(
        borderRadius:BorderRadius.circular(16) ,
        child: SizedBox(
          height: MediaQuery.of(context).size.height * .28,
          child: AspectRatio(
            aspectRatio: 3 / 4,
            child: CachedNetworkImage(
              height: 200,
              imageUrl: imageUrl,
              errorWidget: (context, url, error) => const Icon(Icons.error),
              fit: BoxFit.fill,
        
            ),
          ),
        ),
      ),
    );
  }
}
