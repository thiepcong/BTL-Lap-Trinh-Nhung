import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'app_routes.dart';
import 'modules/convert/view/convert_view.dart';
import 'modules/home/views/home_view.dart';
part 'main_router.gr.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: HomeView, path: Routes.home, initial: true),
    MaterialRoute(page: ConvertView, path: Routes.convert),
  ],
)
class MainRouter extends _$MainRouter {
  MainRouter({
    GlobalKey<NavigatorState>? navigatorKey,
  }) : super(navigatorKey);
}
