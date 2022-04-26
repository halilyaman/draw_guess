// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../../authentication/authentication.dart' as _i2;
import '../../canvas/canvas.dart' as _i6;
import '../../game/game.dart' as _i5;
import '../../home/home.dart' as _i4;
import '../../splash/splash.dart' as _i1;
import '../core.dart' as _i3;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    SignInRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SignInPage());
    },
    HomeRouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.EmptyRouterPage());
    },
    HomeRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.HomePage());
    },
    GameRoomIdDialogRoute.name: (routeData) {
      return _i7.CustomPage<String>(
          routeData: routeData,
          child: const _i5.GameRoomIdDialogPage(),
          fullscreenDialog: true,
          opaque: false,
          barrierDismissible: true);
    },
    PlayerNameDialogRoute.name: (routeData) {
      return _i7.CustomPage<String>(
          routeData: routeData,
          child: const _i5.PlayerNameDialogPage(),
          fullscreenDialog: true,
          opaque: false,
          barrierDismissible: true);
    },
    DrawingBoardRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.DrawingBoardPage());
    },
    GameRoomRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<GameRoomRouteArgs>(
          orElse: () => GameRoomRouteArgs(
              gameRoomId: pathParams.getString('gameRoomId')));
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.GameRoomPage(key: args.key, gameRoomId: args.gameRoomId));
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(SplashRoute.name, path: '/splash'),
        _i7.RouteConfig(SignInRoute.name, path: '/sign-in'),
        _i7.RouteConfig(HomeRouter.name, path: '/home', children: [
          _i7.RouteConfig(HomeRoute.name, path: '', parent: HomeRouter.name),
          _i7.RouteConfig(GameRoomIdDialogRoute.name,
              path: 'create-game', parent: HomeRouter.name),
          _i7.RouteConfig(PlayerNameDialogRoute.name,
              path: 'get-player-name', parent: HomeRouter.name),
          _i7.RouteConfig(DrawingBoardRoute.name,
              path: 'drawing-board', parent: HomeRouter.name),
          _i7.RouteConfig(GameRoomRoute.name,
              path: 'game-room/:gameRoomId', parent: HomeRouter.name)
        ])
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i7.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/splash');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInRoute extends _i7.PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: '/sign-in');

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i3.EmptyRouterPage]
class HomeRouter extends _i7.PageRouteInfo<void> {
  const HomeRouter({List<_i7.PageRouteInfo>? children})
      : super(HomeRouter.name, path: '/home', initialChildren: children);

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i5.GameRoomIdDialogPage]
class GameRoomIdDialogRoute extends _i7.PageRouteInfo<void> {
  const GameRoomIdDialogRoute()
      : super(GameRoomIdDialogRoute.name, path: 'create-game');

  static const String name = 'GameRoomIdDialogRoute';
}

/// generated route for
/// [_i5.PlayerNameDialogPage]
class PlayerNameDialogRoute extends _i7.PageRouteInfo<void> {
  const PlayerNameDialogRoute()
      : super(PlayerNameDialogRoute.name, path: 'get-player-name');

  static const String name = 'PlayerNameDialogRoute';
}

/// generated route for
/// [_i6.DrawingBoardPage]
class DrawingBoardRoute extends _i7.PageRouteInfo<void> {
  const DrawingBoardRoute()
      : super(DrawingBoardRoute.name, path: 'drawing-board');

  static const String name = 'DrawingBoardRoute';
}

/// generated route for
/// [_i5.GameRoomPage]
class GameRoomRoute extends _i7.PageRouteInfo<GameRoomRouteArgs> {
  GameRoomRoute({_i3.Key? key, required String gameRoomId})
      : super(GameRoomRoute.name,
            path: 'game-room/:gameRoomId',
            args: GameRoomRouteArgs(key: key, gameRoomId: gameRoomId),
            rawPathParams: {'gameRoomId': gameRoomId});

  static const String name = 'GameRoomRoute';
}

class GameRoomRouteArgs {
  const GameRoomRouteArgs({this.key, required this.gameRoomId});

  final _i3.Key? key;

  final String gameRoomId;

  @override
  String toString() {
    return 'GameRoomRouteArgs{key: $key, gameRoomId: $gameRoomId}';
  }
}
