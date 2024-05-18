import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

abstract class SimilarBookStates extends Equatable {
  const SimilarBookStates();
  @override
  List<Object?> get props => [];
}

class SimlarBookInitialState extends SimilarBookStates {}

class SimilarBookLoadingState extends SimilarBookStates {}

class SimilarBookSuccessState extends SimilarBookStates {
  final List<BookModel> books;
  const SimilarBookSuccessState(this.books);
}

class SimilarBookFailureState extends SimilarBookStates {
  final String errMessege;
  const SimilarBookFailureState(this.errMessege);
}
