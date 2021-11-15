import 'package:pog_app2/imports.dart';
import 'package:pog_app2/providers/config_list.dart';
import 'package:pog_app2/widgets/atoms/base_divider.dart';
import 'package:pog_app2/widgets/templates/base_drawer_header.dart';

final tmp = Provider<ConfigListType>((ref) {
  final val = [...ref.watch(configListProvider)];
  val.removeWhere((e) {
    return !e.url.startsWith("http://pogstarion.com/") || e.group.isEmpty;
  });
  return val;
});

class DrawerList extends ConsumerStatefulWidget {
  const DrawerList({
    Key? key,
  }) : super(key: key);

  @override
  _DrawerListState createState() => _DrawerListState();
}

class _DrawerListState extends ConsumerState<DrawerList> {
  @override
  Widget build(BuildContext context) {
    final configList = ref.watch(tmp);

    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        const NDrawerHeader(),
        ...configList
            .map(
              (e) => ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(left: 55),
                  child: Text(e.group),
                ),
                onTap: () {},
              ),
            )
            .toList(),
        const NDivider(),
        ListTile(
          leading: const Icon(Icons.settings),
          title: const Text('設定'),
          onTap: () => Navigator.pushNamed(context, '/config'),
        ),
      ],
    );
  }
}
