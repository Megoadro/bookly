import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/widgets.dart';

class CustomErrorMessege extends StatelessWidget {
  const CustomErrorMessege({super.key, required this.errMessege});
  final String errMessege;
  @override
  Widget build(BuildContext context) {
    return Text(
      errMessege,
      style: Styles.textStyle18,
    );
  }
}
