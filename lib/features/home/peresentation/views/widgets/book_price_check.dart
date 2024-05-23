import 'package:bookly/core/utils/functions/get_text.dart';
import 'package:bookly/core/utils/functions/url_luncher.dart';
import 'package:bookly/core/widgets/text_button.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookPriceCheck extends StatelessWidget {
  const BookPriceCheck({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          const Expanded(
            child: BookTextButton(
              text: ' Free',
              textColor: Colors.black,
              backgroundColor: Colors.white,
              textSize: 18,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: BookTextButton(
              onPressed: () async {
                urlCustomLanch(context, bookModel.volumeInfo.previewLink);
              },
              text: getText(bookModel),
              textColor: Colors.white,
              backgroundColor: Colors.orange,
              textSize: 18,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
  
