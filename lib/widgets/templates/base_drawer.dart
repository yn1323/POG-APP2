import 'package:flutter/material.dart';
import 'package:pog_app2/widgets/atoms/base_divider.dart';
import 'package:pog_app2/widgets/molecules/base_drawer_header.dart';

class BaseDrawer extends StatelessWidget {
  const BaseDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const NDrawerHeader(),
          ListTile(
            title: const Padding(
              padding: EdgeInsets.only(left: 55),
              child: Text('一期一会1'),
            ),
            onTap: () {},
          ),
          const NDivider(),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('設定'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
