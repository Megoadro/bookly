import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:bookly/features/home/peresentation/manager/newest_books_cubit/newest_books_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksCubit extends Cubit<NewestBooskStates> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooskInitialState());
  HomeRepo homeRepo;
  Future<void> fetchNewestResult() async {
    emit(NewestBooskLoadingState());
    var dataResult = await homeRepo.fetchNewestData();
    dataResult.fold((failure) {
      emit(NewestBooskFailureState(failure.errMessege));
    }, (books) {
      emit(NewestBooskSuccessState(books));
    });
  }
}
