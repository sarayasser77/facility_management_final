
import 'package:facility_management/features/auth/presentation/views/register_view.dart';
import 'package:facility_management/features/auth/presentation/views/sign_up_view.dart';
import 'package:facility_management/features/home/presentation/views/home_view.dart';
import 'package:go_router/go_router.dart';



abstract class AppRouter{
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context , state) => const SignUpView(),
    ),
    GoRoute(
      path: '/registerView',
      builder: (context , state) => const RegisterView(),
    ),
    GoRoute(
      path: '/homeView',
      builder: (context , state) => const HomeView(),
    ),
  ]);
}