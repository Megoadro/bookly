import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

abstract class NewestBooskStates extends Equatable {
  const NewestBooskStates();
  @override
  List<Object?> get props => [];
}

class NewestBooskInitialState extends NewestBooskStates {}

class NewestBooskLoadingState extends NewestBooskStates {}

class NewestBooskSuccessState extends NewestBooskStates {
  final List<BookModel> books;

  const NewestBooskSuccessState(this.books);
}

class NewestBooskFailureState extends NewestBooskStates {
  final String errMessege;
  const NewestBooskFailureState(this.errMessege);
}
