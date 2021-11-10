import 'package:flutter/material.dart';
import 'package:pog_app2/widgets/templates/base_appbar.dart';
import 'package:pog_app2/widgets/templates/base_drawer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String title = 'TITLE';
  Widget body = const Text('ho--iaaaaa');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseAppBar(
        title: title,
        body: body,
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.admin_panel_settings_sharp),
        onPressed: () {},
      ),
      drawer: const BaseDrawer(),
    );
  }
}
