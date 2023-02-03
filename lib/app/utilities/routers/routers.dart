import 'package:go_router/go_router.dart';

import '../../../presentation/details/view/details_view.dart';
import '../../../presentation/forgetpass/view/forgetpass_view.dart';
import '../../../presentation/home/view/home_view.dart';
import '../../../presentation/login/view/login_view.dart';
import '../../../presentation/onbordering/view/onbordering_view.dart';
import '../../../presentation/signup/view/signup_view.dart';
import '../../../presentation/splash/view/splash_view.dart';

class RoutersManager {
  static const String splash = '/';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String home = '/home';
  static const String details = '/details';
  static const String onBordering = '/onBordering';

  static const String forgetPass = '/forgetPass';
}

final router = GoRouter(routes: [
  GoRoute(
    path: RoutersManager.splash,
    builder: (context, state) => const SplashView(),
  ),
  GoRoute(
    path: RoutersManager.login,
    builder: (context, state) => const LoginView(),
  ),
  GoRoute(
    path: RoutersManager.signup,
    builder: (context, state) => const SignupView(),
  ),
  GoRoute(
    path: RoutersManager.home,
    builder: (context, state) => const HomeView(),
  ),
  GoRoute(
    path: RoutersManager.details,
    builder: (context, state) => const DetailsView(),
  ),
  GoRoute(
    path: RoutersManager.forgetPass,
    builder: (context, state) => const ForgetPassView(),
  ),
  GoRoute(
    path: RoutersManager.onBordering,
    builder: (context, state) => const OnBorderingView(),
  )
]);
