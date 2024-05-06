import 'package:bookly/core/styles.dart';
import 'package:flutter/material.dart';

class BookTextButton extends StatelessWidget {
  const BookTextButton({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    this.textSize,
    this.borderRadius,
    required this.text,
  });
  final Color backgroundColor;
  final Color textColor;
  final double? textSize;
  final BorderRadius? borderRadius;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(16),
            )),
        child: Text(
          text,
          style: Styles.textStyle16.copyWith(
            color: textColor,
            fontWeight: FontWeight.w900,
            fontSize: textSize,
          ),
        ),
      ),
    );
  }
}
