import 'package:beer_app/src/app/beer_app.dart';
import 'package:beer_app/src/app/deps.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hooked_bloc/hooked_bloc.dart';

void main() {
  configureDependencies();

  runApp(
    HookedBlocConfigProvider(
      injector: () => GetIt.I.get,
      child: BeerApp(),
    ),
  );
}
