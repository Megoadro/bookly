import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:bookly/features/home/peresentation/manager/book_item_cubit/book_item_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookItemCubit extends Cubit<BookItemStates> {
  BookItemCubit(this.homeRepo) : super(BookItemInitialState());
  final HomeRepo homeRepo;
  Future<void> fetchBookItemResult() async {
    emit(BookItemLoadingState());
    var dataResult = await homeRepo.fetchBookItemData();
    dataResult.fold((failure) {
      emit(BookItemFailureState(failure.errMessege));
    }, (books) {
      emit(BookItemSuccessState(books));
    });
  }
}
