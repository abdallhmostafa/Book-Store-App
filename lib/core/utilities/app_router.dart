import 'package:booka/features/home/presentation/view/book_details_view.dart';
import 'package:booka/features/home/presentation/view/home_view.dart';
import 'package:booka/features/search/presentation/views/search_view.dart';
import 'package:booka/features/splash/presentation/view_model/views/splash_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter{
static  const String kHomeView= '/homeView';
static  const String kBookDetails= '/bookDetails';
static  const String kSearchView= '/search';

 static final router = GoRouter(routes: [
    GoRoute(path: '/',
      builder: (context, state) => const SplashViewScreen(),
    ),
   GoRoute(path:kHomeView ,
     builder: (context, state) => const HomeView(),
   ),

   GoRoute(path:kBookDetails ,
     builder: (context, state) => const BookDetailsView(),
   ),
   GoRoute(path:kSearchView ,
     builder: (context, state) => const SearchView(),
   ),
  ]);
}