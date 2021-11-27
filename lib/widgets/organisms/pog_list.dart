import 'package:pog_app2/imports.dart';
import 'package:pog_app2/providers/states.dart';
import 'package:pog_app2/widgets/atoms/loading.dart';
import 'package:pog_app2/widgets/molecules/user_card.dart';

class PogList extends ConsumerStatefulWidget {
  const PogList({
    Key? key,
  }) : super(key: key);

  @override
  _PogList createState() => _PogList();
}

class _PogList extends ConsumerState<PogList> {
  @override
  Widget build(BuildContext context) {
    final isLoading = ref.watch(statesProvider).isLoading;
    return isLoading
        ? const Loading()
        : Column(
            children: const <Widget>[
              UserCard(
                rank: 1,
                name: "Nameoooooooooooooooooooo",
                prize: 100,
                recentPrize: 200,
              ),
              UserCard(
                rank: 2,
                name: "Nameoooooooooooooooooooo",
                prize: 100,
                recentPrize: 200,
              ),
              UserCard(
                rank: 3,
                name: "Nameoooooooooooooooooooo",
                prize: 100,
                recentPrize: 200,
              ),
              UserCard(
                rank: 4,
                name: "Nameoooooooooooooooooooo",
                prize: 100,
                recentPrize: 0,
              ),
            ],
          );
  }
}
