import 'package:flutter/material.dart';
import 'package:pog_app2/widgets/molecules/setting_card.dart';

class ReorderSettings extends StatefulWidget {
  const ReorderSettings({Key? key}) : super(key: key);

  @override
  State<ReorderSettings> createState() => _ReorderSettingsState();
}

class _ReorderSettingsState extends State<ReorderSettings> {
  List<int> items = [1, 2, 3, 4, 5];

  void deleteCard(int index) {
    setState(() {
      items.remove(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ReorderableListView(
      children: items
          .map(
            (index) => SettingCard(
              index: index,
              key: UniqueKey(),
              delete: deleteCard,
            ),
          )
          .toList(),
      onReorder: (int oldIndex, int newIndex) {
        setState(() {
          final int insertIndex = oldIndex < newIndex ? newIndex - 1 : newIndex;
          final int item = items.removeAt(oldIndex);
          items.insert(insertIndex, item);
        });
      },
    );
  }
}
