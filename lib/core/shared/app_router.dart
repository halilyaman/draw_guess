import 'package:auto_route/auto_route.dart';
import 'package:draw_guess/authentication/authentication.dart';
import 'package:draw_guess/canvas/canvas.dart';
import 'package:draw_guess/home/home.dart';
import 'package:draw_guess/splash/splash.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
      path: '/splash',
      page: SplashPage,
    ),
    AutoRoute(
      path: '/sign-in',
      page: SignInPage,
    ),
    AutoRoute(
      path: '/drawing',
      page: DrawingBoardPage,
    ),
    AutoRoute(
      path: '/home',
      page: HomePage,
    ),
  ],
)

class $AppRouter {}