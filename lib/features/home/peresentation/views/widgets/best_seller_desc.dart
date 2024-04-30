import 'package:bookly/core/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BestSellerDesc extends StatelessWidget {
  const BestSellerDesc({super.key});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: const Text('Harry Potter and The Goblet of Fire',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.textStyle18),
                  ),
                  Text(
                    'J.K Rowiling',
                    style: Styles.textStyle16.copyWith(color: Colors.grey),
                  ),
                  Row(
                    children: [
                      Text(
                        '19.99€',
                        style: Styles.textStyle118
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          const Icon(
                            FontAwesomeIcons.solidStar,
                            color: Colors.amber,
                            size: 18,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            '4.8',
                            style: Styles.textStyle16
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            '(2330)',
                            style: Styles.textStyle16.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            );
  }
}