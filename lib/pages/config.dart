import 'package:pog_app2/imports.dart';
import 'package:pog_app2/providers/config_list.dart';
import 'package:pog_app2/widgets/templates/base_appbar.dart';
import 'package:pog_app2/widgets/templates/base_floating_action_button.dart';
import 'package:pog_app2/widgets/organisms/reorder_settings.dart';

class Config extends ConsumerStatefulWidget {
  const Config({Key? key}) : super(key: key);

  @override
  _ConfigState createState() => _ConfigState();
}

class _ConfigState extends ConsumerState<Config> {
  String title = '設定';
  Widget body = const Text('this is setting');

  @override
  void initState() {
    super.initState();
    ref.read(configListProvider.notifier).init();
  }

  @override
  Widget build(BuildContext context) {
    final bool showButton = ref.watch(configListProvider).length < 10;

    return Scaffold(
      body: BaseAppBar(
        title: title,
        body: const ReorderSettings(),
      ),
      floatingActionButton: showButton ? const NFloatingActionButton() : null,
    );
  }
}
