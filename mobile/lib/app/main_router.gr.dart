// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'main_router.dart';

class _$MainRouter extends RootStackRouter {
  _$MainRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeViewRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const HomeView(),
      );
    },
    ConvertViewRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const ConvertView(),
      );
    },
    ListBluetoothViewRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const ListBluetoothView(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: 'home',
          fullMatch: true,
        ),
        RouteConfig(
          HomeViewRoute.name,
          path: 'home',
        ),
        RouteConfig(
          ConvertViewRoute.name,
          path: 'convert',
        ),
        RouteConfig(
          ListBluetoothViewRoute.name,
          path: 'list_bluetooth',
        ),
      ];
}

/// generated route for
/// [HomeView]
class HomeViewRoute extends PageRouteInfo<void> {
  const HomeViewRoute()
      : super(
          HomeViewRoute.name,
          path: 'home',
        );

  static const String name = 'HomeViewRoute';
}

/// generated route for
/// [ConvertView]
class ConvertViewRoute extends PageRouteInfo<void> {
  const ConvertViewRoute()
      : super(
          ConvertViewRoute.name,
          path: 'convert',
        );

  static const String name = 'ConvertViewRoute';
}

/// generated route for
/// [ListBluetoothView]
class ListBluetoothViewRoute extends PageRouteInfo<void> {
  const ListBluetoothViewRoute()
      : super(
          ListBluetoothViewRoute.name,
          path: 'list_bluetooth',
        );

  static const String name = 'ListBluetoothViewRoute';
}
