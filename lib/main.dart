import 'package:bookly/constant.dart';
import 'package:bookly/core/utils/router.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/features/home/peresentation/manager/book_item_cubit/book_item_cubit.dart';
import 'package:bookly/features/home/peresentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocator();
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BookItemCubit(
             getIt.get<HomeRepoImpls>(),
          ),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
             getIt.get<HomeRepoImpls>(),
          ),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouters.router,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
