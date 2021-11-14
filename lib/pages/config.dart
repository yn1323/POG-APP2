import 'package:pog_app2/imports.dart';
import 'package:pog_app2/widgets/templates/base_appbar.dart';
import 'package:pog_app2/widgets/templates/base_floating_action_button.dart';
import 'package:pog_app2/widgets/organisms/reorder_settings.dart';

class Config extends StatefulWidget {
  const Config({Key? key}) : super(key: key);

  @override
  _ConfigState createState() => _ConfigState();
}

class _ConfigState extends State<Config> {
  String title = '設定';
  Widget body = const Text('this is setting');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseAppBar(
        title: title,
        body: ReorderSettings(),
      ),
      floatingActionButton: const NFloatingActionButton(),
    );
  }
}
