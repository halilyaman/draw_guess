import 'package:draw_guess/core/core.dart';
import 'package:draw_guess/authentication/authentication.dart';
import 'package:draw_guess/canvas/canvas.dart';
import 'package:draw_guess/game/game.dart';
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
      path: '/home',
      name: 'HomeRouter',
      page: EmptyRouterPage,
      children: [
        AutoRoute(
          path: '',
          page: HomePage,
        ),
        CustomRoute<String>(
          path: 'create-game',
          page: GameRoomIdDialogPage,
          fullscreenDialog: true,
          barrierDismissible: true,
          opaque: false,
        ),
        CustomRoute<String>(
          path: 'get-player-name',
          page: PlayerNameDialogPage,
          fullscreenDialog: true,
          barrierDismissible: true,
          opaque: false,
        ),
        AutoRoute(
          path: 'drawing-board',
          page: DrawingBoardPage,
        ),
        AutoRoute(
          path: 'game-room/:gameRoomId',
          page: GameRoomPage,
        ),
      ]
    ),
  ],
)

class $AppRouter {}