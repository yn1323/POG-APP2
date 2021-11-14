import 'package:pog_app2/imports.dart';
import 'package:pog_app2/providers/config_list.dart';

class NFloatingActionButton extends HookConsumerWidget {
  const NFloatingActionButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {
        ref.read(configListProvider.notifier).addCard();
      },
    );
  }
}
