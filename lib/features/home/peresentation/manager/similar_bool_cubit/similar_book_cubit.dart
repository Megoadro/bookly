
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:bookly/features/home/peresentation/manager/similar_bool_cubit/similar_book_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBookCubit extends Cubit<SimilarBookStates> {
  SimilarBookCubit(this.homeRepo) : super(SimlarBookInitialState());

  final HomeRepo homeRepo;
  Future<void> fetchSimilarResult({required String category}) async {
    emit(SimilarBookLoadingState());
    var result = await homeRepo.fetchSimilartData(category: category);
    result.fold((failure) {
      emit(SimilarBookFailureState(failure.errMessege));
    }, (books) {
      emit(SimilarBookSuccessState(books));
    });
  }
}
