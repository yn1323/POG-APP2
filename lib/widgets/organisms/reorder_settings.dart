import 'package:flutter/material.dart';
import 'package:pog_app2/widgets/molecules/setting_card.dart';

typedef ITEM = Map<String, dynamic>;

class ReorderSettings extends StatefulWidget {
  const ReorderSettings({Key? key}) : super(key: key);

  @override
  State<ReorderSettings> createState() => _ReorderSettingsState();
}

class _ReorderSettingsState extends State<ReorderSettings> {
  List<ITEM> items = [
    {
      "url": "http://hogehoge1",
      "group": "group1",
      "order": 1,
    },
    {
      "url": "http://hogehoge2",
      "group": "group2",
      "order": 2,
    },
    {
      "url": "http://hogehoge3",
      "group": "group3",
      "order": 3,
    },
  ];

  void deleteCard(ITEM item) {
    setState(() {
      items.remove(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ReorderableListView(
      children: items
          .map(
            (item) => SettingCard(
              info: item,
              key: UniqueKey(),
              delete: deleteCard,
            ),
          )
          .toList(),
      onReorder: (int oldIndex, int newIndex) {
        setState(() {
          final int insertIndex = oldIndex < newIndex ? newIndex - 1 : newIndex;
          var item = items.removeAt(oldIndex);
          items.insert(insertIndex, item);
        });
      },
    );
  }
}
