import 'package:flutter/material.dart';
import 'route_app.dart';

class MyApp extends StatefulWidget {
  const MyApp({
    super.key,
  });

  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return const RouteApp();
  }
}
