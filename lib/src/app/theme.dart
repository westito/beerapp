import 'package:flutter/material.dart';

final appTheme = ThemeData.from(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.blue.shade800,
  ).copyWith(
    surface: Colors.white,
    shadow: Colors.black.withOpacity(0.1),
  ),
  textTheme: const TextTheme(
    headlineSmall: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
      height: 26.63 / 22,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      height: 16.94 / 14,
    ),
  ),
);
