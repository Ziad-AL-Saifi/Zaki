import 'package:go_router/go_router.dart';

import '../../views/details_view.dart';
import '../../views/forgetpass_view.dart';
import '../../views/home_view.dart';
import '../../views/login_view.dart';
import '../../views/signup_view.dart';
import '../../views/splash_view.dart';

class RoutersManager {
  static const String splash = '/';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String home = '/home';
  static const String details = '/details';
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
  )
]);
