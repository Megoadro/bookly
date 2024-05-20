import 'package:bookly/core/utils/router.dart';
import 'package:bookly/core/widgets/custom_error_messege.dart';
import 'package:bookly/core/widgets/custom_indecator.dart';
import 'package:bookly/features/home/peresentation/manager/book_item_cubit/book_item_cubit.dart';
import 'package:bookly/features/home/peresentation/manager/book_item_cubit/book_item_states.dart';
import 'package:bookly/features/home/peresentation/views/widgets/book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class BookListView extends StatelessWidget {
  const BookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookItemCubit, BookItemStates>(
      builder: (context, state) {
        if (state is BookItemSuccessState) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .28,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push(
                          AppRouters.kBookDetailsView,
                          extra: state.books[index],
                        );
                      },
                      child: BookItem(
                        imageUrl: state.books[index].volumeInfo.imageLinks
                                ?.thumbnail ??
                            '',
                      ));
                }),
          );
        } else if (state is BookItemFailureState) {
          return CustomErrorMessege(errMessege: state.errMessege);
        } else {
          return const CustomIndecator();
        }
      },
    );
  }
}
