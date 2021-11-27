import 'package:pog_app2/imports.dart';
import 'package:pog_app2/providers/config_list.dart';
import 'package:pog_app2/widgets/molecules/setting_card.dart';

class ReorderSettings extends HookConsumerWidget {
  const ReorderSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final configList = ref.watch(configListProvider);
    return ReorderableListView(
      children: configList
          .map(
            (config) => SettingCard(
              info: config,
              key: UniqueKey(),
            ),
          )
          .toList(),
      onReorder: (int oldIndex, int newIndex) {
        ref.read(configListProvider.notifier).reorderCard(oldIndex, newIndex);
      },
    );
  }
}
