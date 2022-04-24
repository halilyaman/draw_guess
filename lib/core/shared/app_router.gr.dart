// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i7;

import '../../authentication/authentication.dart' as _i2;
import '../../canvas/canvas.dart' as _i6;
import '../../game/game.dart' as _i5;
import '../../home/home.dart' as _i4;
import '../../splash/splash.dart' as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    SignInRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SignInPage());
    },
    HomeRouter.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.EmptyRouterPage());
    },
    HomeRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.HomePage());
    },
    CreateGameDialogRoute.name: (routeData) {
      return _i3.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i5.CreateGameDialogPage(),
          fullscreenDialog: true,
          opaque: false,
          barrierDismissible: true);
    },
    DrawingBoardRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.DrawingBoardPage());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(SplashRoute.name, path: '/splash'),
        _i3.RouteConfig(SignInRoute.name, path: '/sign-in'),
        _i3.RouteConfig(HomeRouter.name, path: '/home', children: [
          _i3.RouteConfig(HomeRoute.name, path: '', parent: HomeRouter.name),
          _i3.RouteConfig(CreateGameDialogRoute.name,
              path: 'create-game', parent: HomeRouter.name),
          _i3.RouteConfig(DrawingBoardRoute.name,
              path: 'drawing-board', parent: HomeRouter.name)
        ])
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i3.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/splash');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInRoute extends _i3.PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: '/sign-in');

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i3.EmptyRouterPage]
class HomeRouter extends _i3.PageRouteInfo<void> {
  const HomeRouter({List<_i3.PageRouteInfo>? children})
      : super(HomeRouter.name, path: '/home', initialChildren: children);

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i3.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i5.CreateGameDialogPage]
class CreateGameDialogRoute extends _i3.PageRouteInfo<void> {
  const CreateGameDialogRoute()
      : super(CreateGameDialogRoute.name, path: 'create-game');

  static const String name = 'CreateGameDialogRoute';
}

/// generated route for
/// [_i6.DrawingBoardPage]
class DrawingBoardRoute extends _i3.PageRouteInfo<void> {
  const DrawingBoardRoute()
      : super(DrawingBoardRoute.name, path: 'drawing-board');

  static const String name = 'DrawingBoardRoute';
}