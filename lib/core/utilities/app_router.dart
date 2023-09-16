import 'package:booka/core/utilities/service_locator.dart';
import 'package:booka/features/home/data/models/book_model/book_model.dart';
import 'package:booka/features/home/data/repos/home_repo_implement.dart';
import 'package:booka/features/home/presentation/view/book_details_view.dart';
import 'package:booka/features/home/presentation/view/home_view.dart';
import 'package:booka/features/home/presentation/view_model/similar_books_cubit/similar_book_cubit.dart';
import 'package:booka/features/search/presentation/views/search_view.dart';
import 'package:booka/features/splash/presentation/view_model/views/splash_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String kHomeView = '/homeView';
  static const String kBookDetails = '/bookDetails';
  static const String kSearchView = '/search';

  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashViewScreen(),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: kBookDetails,
      builder: (context, state) => BlocProvider(
        create: (context) => SimilarBooksCubit( getIt.get<HomeRepoImplement>()),
        child:  BookDetailsView(bookModel: state.extra as BookModel,)),
    ),
    GoRoute(
      path: kSearchView,
      builder: (context, state) => const SearchView(),
    ),
  ]);
}
