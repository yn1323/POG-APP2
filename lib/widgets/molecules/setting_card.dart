import 'package:flutter/material.dart';
import 'package:pog_app2/widgets/organisms/reorder_settings.dart';

class SettingCard extends StatelessWidget {
  final ITEM info;
  final Function(ITEM) delete;

  const SettingCard({Key? key, required this.info, required this.delete})
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
      key: Key('$info["order"]'),
      child: Card(
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              TextFormField(
                initialValue: info["group"],
                decoration: const InputDecoration(
                  hintText: 'グループ名',
                ),
              ),
              TextFormField(
                initialValue: info["url"],
                decoration: const InputDecoration(
                  hintText: 'URL',
                ),
              ),
            ],
          ),
        ),
      ),
      onDismissed: (_) => delete(info),
      confirmDismiss: (_) => confirmDismiss(context, _),
    );
  }
}
