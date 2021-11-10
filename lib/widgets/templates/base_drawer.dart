import 'package:flutter/material.dart';
import 'package:pog_app2/widgets/organisms/drawer_list.dart';

class BaseDrawer extends StatelessWidget {
  const BaseDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: DrawerList(),
    );
  }
}
