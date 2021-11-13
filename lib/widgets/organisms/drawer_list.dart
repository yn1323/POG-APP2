import 'package:flutter/material.dart';
import 'package:pog_app2/widgets/atoms/base_divider.dart';
import 'package:pog_app2/widgets/templates/base_drawer_header.dart';

class DrawerList extends StatefulWidget {
  const DrawerList({
    Key? key,
  }) : super(key: key);

  @override
  State<DrawerList> createState() => _DrawerListState();
}

class _DrawerListState extends State<DrawerList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        const NDrawerHeader(),
        ListTile(
          title: const Padding(
            padding: EdgeInsets.only(left: 55),
            child: Text('一期一会'),
          ),
          onTap: () {},
        ),
        const NDivider(),
        ListTile(
          leading: const Icon(Icons.settings),
          title: const Text('設定'),
          onTap: () => Navigator.pushNamed(context, '/config'),
        ),
      ],
    );
  }
}
