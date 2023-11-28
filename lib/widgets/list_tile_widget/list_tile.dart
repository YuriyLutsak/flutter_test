import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({
    super.key, required this.tileName,
  });

  final String tileName;

  @override
  Widget build(BuildContext context) {
    final themeLink = Theme.of(context);
    const subTileName = 'sub tile name';
    return ListTile(
      leading: SvgPicture.asset(
        'assets/svg/cat.svg',
        height: 35,
        width: 35,
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
      title: Text(
        tileName,
        style: themeLink.textTheme.bodyMedium,
      ),
      subtitle: Text(
        subTileName,
        style: themeLink.textTheme.bodySmall,
      ),
      onTap: () {
        Navigator.of(context).pushNamed(
          '/first', arguments: tileName,
        );
      },
    );
  }
}
