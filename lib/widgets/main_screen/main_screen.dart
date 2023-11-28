import 'package:crypto_coin/repository/api/requests.dart';
import 'package:flutter/material.dart';

import '../list_tile_widget/list_tile.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({super.key});

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('app barr main screen'),
      // ),
      body: ListView.separated(
        itemCount: 7,
        separatorBuilder: (context, i) => Divider(),
        itemBuilder: (context, i) {
          const tileName = 'new tile name';
          return const ListTileWidget(tileName: tileName);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.download),
        onPressed: () => RequestApi().getAll(),
      ),
    );
  }
}
