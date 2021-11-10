import 'package:flutter/material.dart';

class NFloatingActionButton extends StatelessWidget {
  const NFloatingActionButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.admin_panel_settings_sharp),
      onPressed: () {},
    );
  }
}
