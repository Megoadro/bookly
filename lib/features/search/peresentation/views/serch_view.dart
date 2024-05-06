import 'package:bookly/features/search/peresentation/views/widgets/serch_view_body.dart';
import 'package:flutter/material.dart';

class SerchView extends StatelessWidget {
  const SerchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SerchViewBody(),
      ),
    );
  }
}
