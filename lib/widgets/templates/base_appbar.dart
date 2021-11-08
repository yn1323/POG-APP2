import 'package:flutter/material.dart';

class BaseAppBar extends StatelessWidget {
  const BaseAppBar({
    Key? key,
    required this.title,
    required this.body,
  }) : super(key: key);

  final String title;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            title: Text(title),
            pinned: false,
            floating: false,
            forceElevated: innerBoxIsScrolled,
            leading: IconButton(
              icon: const Icon(Icons.menu_sharp),
              tooltip: 'Show Drawer',
              onPressed: () {},
            ),
          ),
        ];
      },
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: body,
      ),
    );
  }
}
