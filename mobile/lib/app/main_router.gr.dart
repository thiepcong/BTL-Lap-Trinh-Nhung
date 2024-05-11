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
      final args = routeData.argsAs<ListBluetoothViewRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: ListBluetoothView(
          key: args.key,
          homeCubit: args.homeCubit,
        ),
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
class ListBluetoothViewRoute extends PageRouteInfo<ListBluetoothViewRouteArgs> {
  ListBluetoothViewRoute({
    Key? key,
    required HomeCubit homeCubit,
  }) : super(
          ListBluetoothViewRoute.name,
          path: 'list_bluetooth',
          args: ListBluetoothViewRouteArgs(
            key: key,
            homeCubit: homeCubit,
          ),
        );

  static const String name = 'ListBluetoothViewRoute';
}

class ListBluetoothViewRouteArgs {
  const ListBluetoothViewRouteArgs({
    this.key,
    required this.homeCubit,
  });

  final Key? key;

  final HomeCubit homeCubit;

  @override
  String toString() {
    return 'ListBluetoothViewRouteArgs{key: $key, homeCubit: $homeCubit}';
  }
}
