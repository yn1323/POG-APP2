import 'package:pog_app2/imports.dart';
import 'package:pog_app2/providers/config_list.dart';
import 'package:pog_app2/widgets/templates/base_appbar.dart';
import 'package:pog_app2/widgets/templates/base_drawer.dart';
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
        body: Column(
          children: <Widget>[
            Card(
              child: SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 50.0,
                        height: 50.0,
                        child: Icon(
                          Icons.star,
                          color: Colors.amber[600],
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey[100],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: const NFloatingActionButton(),
      drawer: const BaseDrawer(),
    );
  }
}
