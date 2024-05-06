import 'package:bookly/features/search/peresentation/views/widgets/custom_text_feild.dart';
import 'package:bookly/features/search/peresentation/views/widgets/serch_results.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SerchViewBody extends StatelessWidget {
  const SerchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            height: 40,
          ),
          CustomTextField(),
           SizedBox(height: 20,),
           Expanded(child: SearchResults(),),
        ],
      ),
    );
  }
}

