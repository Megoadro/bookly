import 'package:bookly/core/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, this.mainAxisAlignment = MainAxisAlignment.start});
   final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.amber,
          size: 16,
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          '4.8',
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          width: 8,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            '(2330)',
            style: Styles.textStyle16
                .copyWith(fontWeight: FontWeight.bold,),
          ),
        ),
      ],
    );
  }
}
