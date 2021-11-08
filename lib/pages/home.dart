import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Theme.of(context).primaryColor,
        title: const Text('APPBAR!!!'),
      ),
      body: Column(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.admin_panel_settings_sharp),
        onPressed: () {},
      ),
    );
  }
}
