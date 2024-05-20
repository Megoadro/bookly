import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/peresentation/manager/similar_bool_cubit/similar_book_cubit.dart';
import 'package:bookly/features/home/peresentation/views/widgets/book_datails_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBookCubit>(context).fetchSimilarResult(
      category: widget.bookModel.volumeInfo.categories![0],
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BookDetailsBody(),
    );
  }
}
