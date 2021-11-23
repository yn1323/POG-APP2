import 'package:pog_app2/imports.dart';

final Map<int, Color> starColors = {
  1: Colors.amber[600]!,
  2: Colors.indigo[200]!,
  3: Colors.deepOrange[600]!,
};

class UserCard extends StatelessWidget {
  final int rank;
  final String name;
  final int prize;
  final int recentPrize;

  const UserCard(
      {Key? key,
      required this.rank,
      required this.name,
      required this.prize,
      required this.recentPrize})
      : super(key: key);

  Icon? showRankIcon() {
    if (!hasRank()) {
      return null;
    }
    return Icon(
      Icons.star,
      color: starColors[rank],
    );
  }

  bool hasRank() {
    return (rank <= 3);
  }

  Text showRecentPrize() {
    final bool hasRecent = recentPrize != 0;
    final String text = hasRecent ? "$recentPrize" : '-';

    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: hasRecent ? Colors.red[600] : null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  width: 50.0,
                  height: 50.0,
                  child: showRankIcon(),
                  decoration: hasRank()
                      ? BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey[200],
                        )
                      : null,
                ),
              ),
              Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    name,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Center(
                  child: Text('$prize',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      )),
                ),
              ),
              Expanded(
                flex: 2,
                child: Center(child: showRecentPrize()),
              )
            ],
          ),
        ),
      ),
    );
  }
}
