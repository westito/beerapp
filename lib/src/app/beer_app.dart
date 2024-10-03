import 'package:beer_app/src/app/router.dart';
import 'package:beer_app/src/app/theme.dart';
import 'package:flutter/material.dart';

class BeerApp extends StatelessWidget {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Beer app',
      theme: appTheme,
      routerConfig: _appRouter.config(),
    );
  }
}
