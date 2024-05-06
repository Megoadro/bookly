import 'package:bookly/core/widgets/text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookPriceCheck extends StatelessWidget {
  const BookPriceCheck({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: BookTextButton(
              text: ' 199 L.E',
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
              text: 'Free preview',
              textColor: Colors.white,
              backgroundColor: Colors.orange,
              textSize: 18,
              borderRadius: BorderRadius.only(
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
