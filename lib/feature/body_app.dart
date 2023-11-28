import 'package:flutter/material.dart';

import '../widgets/main_screen/main_screen.dart';

class BuildingApp extends StatelessWidget {
  const BuildingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Name of AppBar'),
      ),
      body: const MainScreenWidget(),
    );
  }
}

