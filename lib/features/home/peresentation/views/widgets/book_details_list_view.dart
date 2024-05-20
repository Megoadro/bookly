import 'package:bookly/core/widgets/custom_error_messege.dart';
import 'package:bookly/core/widgets/custom_indecator.dart';
import 'package:bookly/features/home/peresentation/manager/similar_bool_cubit/similar_book_cubit.dart';
import 'package:bookly/features/home/peresentation/manager/similar_bool_cubit/similar_book_states.dart';
import 'package:bookly/features/home/peresentation/views/widgets/book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsListView extends StatelessWidget {
  const BookDetailsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBookCubit, SimilarBookStates>(
      builder: (context, state) {
        if (state is SimilarBookSuccessState) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .17,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (context, index) {
                  return  BookItem(
                    imageUrl:
                        state.books[index].volumeInfo.imageLinks?.thumbnail ?? '',
                  );
                }),
          );
        } else if (state is SimilarBookFailureState) {
          return CustomErrorMessege(errMessege: state.errMessege);
        } else {
          return const CustomIndecator();
        }
      },
    );
  }
}
