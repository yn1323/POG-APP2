import 'package:pog_app2/imports.dart';
import 'package:pog_app2/providers/config_list.dart';
import 'package:pog_app2/widgets/atoms/loading.dart';
import 'package:pog_app2/widgets/organisms/pog_list.dart';
import 'package:pog_app2/widgets/templates/base_appbar.dart';
import 'package:pog_app2/widgets/templates/base_drawer.dart';
import 'package:pog_app2/widgets/molecules/user_card.dart';
import 'package:pog_app2/widgets/templates/base_floating_action_button.dart';

class Home extends ConsumerStatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
  String title = 'TITLE';
  @override
  void initState() {
    super.initState();
    ref.read(configListProvider.notifier).init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseAppBar(
        title: title,
        body: const PogList(),
      ),
      floatingActionButton: const NFloatingActionButton(),
      drawer: const BaseDrawer(),
    );
  }
}
