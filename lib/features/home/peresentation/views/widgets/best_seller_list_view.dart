import 'package:bookly/core/widgets/custom_error_messege.dart';
import 'package:bookly/core/widgets/custom_indecator.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/peresentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/features/home/peresentation/manager/newest_books_cubit/newest_books_states.dart';
import 'package:bookly/features/home/peresentation/views/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key,});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooskStates>(
      builder: (context, state) {
        if (state is NewestBooskSuccessState) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: state.books.length,
                itemBuilder: (context, index) {
                  return  BestSellerItem(
                    bookModel: state.books[index],
                  );
                }),
          );
        } else if (state is NewestBooskFailureState) {
          return CustomErrorMessege(errMessege: state.errMessege);
        } else {
          return const CustomIndecator();
        }
      },
    );
  }
}
