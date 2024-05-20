import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/features/home/peresentation/manager/similar_bool_cubit/similar_book_cubit.dart';
import 'package:bookly/features/home/peresentation/views/book_details_view.dart';
import 'package:bookly/features/home/peresentation/views/home_view.dart';
import 'package:bookly/features/search/peresentation/views/serch_view.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouters {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSerchView = '/serchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => BlocProvider(
            create: (context) => SimilarBookCubit(getIt.get<HomeRepoImpls>()),
            child:  BookDetailsView(
              bookModel: state.extra as BookModel,
            ),),
      ),
      GoRoute(
        path: kSerchView,
        builder: (context, state) => const SerchView(),
      ),
    ],
  );
}
