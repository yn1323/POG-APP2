import 'package:flutter/material.dart';

class SettingCard extends StatelessWidget {
  final int index;
  final Function(int) delete;

  const SettingCard({Key? key, required this.index, required this.delete})
      : super(key: key);

  Future<bool?> confirmDismiss(BuildContext context, DismissDirection _) async {
    return await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('削除確認'),
          content: const Text('本当に削除しますか？'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: const Text('キャンセル'),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: const Text('削除'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key('$index'),
      child: Card(
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text('Hello world $index'),
        ),
      ),
      onDismissed: (_) => delete(index),
      confirmDismiss: (_) => confirmDismiss(context, _),
    );
  }
}
