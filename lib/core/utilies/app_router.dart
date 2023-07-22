
import 'package:facility_management/features/auth/presentation/views/register_view.dart';
import 'package:facility_management/features/auth/presentation/views/sign_up_view.dart';
import 'package:facility_management/features/auth/presentation/views/verify_view.dart';

import 'package:facility_management/features/home/presentation/views/home_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/boarding/presentation/view/boarding_view.dart';
import '../../features/payment/presentation/views/pay_card.dart';




abstract class AppRouter{
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context , state) => const HomeView(),
    ),
    GoRoute(
      path: '/signView',
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
    GoRoute(
      path: '/verifyView',
      builder: (context , state) => const VerifyView(),
    ),
  ]);
}