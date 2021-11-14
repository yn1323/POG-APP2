import 'package:pog_app2/imports.dart';
import 'package:pog_app2/providers/config_list.dart';

class SettingCard extends HookConsumerWidget {
  final Config info;

  const SettingCard({Key? key, required this.info}) : super(key: key);

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
  Widget build(BuildContext context, WidgetRef ref) {
    String tmpGroup = info.group;
    String tmpUrl = info.url;

    return Dismissible(
      key: Key('$info["order"]'),
      child: GestureDetector(
        // NOTE: キャレットがあるカード移動時のエラー防止
        onTapDown: (_) {
          FocusScope.of(context).unfocus();
          ref.read(configListProvider.notifier).editCard(
              Config(group: tmpGroup, order: info.order, url: tmpUrl));
        },
        child: Card(
          elevation: 3,
          child: Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    TextFormField(
                        initialValue: info.group,
                        decoration: const InputDecoration(
                          hintText: "group",
                        ),
                        onChanged: (v) {
                          tmpGroup = v;
                        }),
                    TextFormField(
                        initialValue: info.url,
                        decoration: const InputDecoration(
                          hintText: 'URL',
                        ),
                        onChanged: (v) {
                          tmpUrl = v;
                        }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      onDismissed: (_) =>
          ref.read(configListProvider.notifier).removeCard(info),
      confirmDismiss: (_) => confirmDismiss(context, _),
    );
  }
}
