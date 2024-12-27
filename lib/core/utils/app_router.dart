import 'package:bookly_app/features/home/presantion/viwe/book_details_viwe.dart';
import 'package:bookly_app/features/home/presantion/viwe/home_viwe.dart';
import 'package:bookly_app/features/seplash/presantion/viwes/splash_viwe.dart';
import 'package:go_router/go_router.dart';
abstract class AppRouter{
  static const kHomeView = '/homeViwe';
  static const kBookDetailsView = '/bookDetailsView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashViwe(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeViwe(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => const BookDetailsViwe(),
      ),
    ],
  );

}