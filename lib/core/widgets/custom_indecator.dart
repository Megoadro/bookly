import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomIndecator extends StatelessWidget {
  const CustomIndecator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
