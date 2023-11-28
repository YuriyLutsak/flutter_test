import 'package:crypto_coin/feature/body_app.dart';
import 'package:crypto_coin/router/routers.dart';
import 'package:crypto_coin/theme/theme.dart';
import 'package:crypto_coin/widgets/nested_screens/nested_first.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const TestApp());
}

class TestApp extends StatelessWidget {
  const TestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CoinApp - title of app. Doesn\'t shows',
      theme: darkTheme,
      routes: routes,
      // home: BuildingApp(),
    );
  }
}
