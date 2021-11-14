import 'package:pog_app2/imports.dart';

typedef ConfigListType = List<Config>;

class Config {
  Config({required this.order, required this.url, required this.group});

  final int order;
  final String url;
  final String group;

  @override
  String toString() {
    return 'Todo(order: $order, url: $url, group: $group)';
  }
}

class ConfigList extends StateNotifier<ConfigListType> {
  ConfigList(ConfigListType? initialTask) : super(initialTask ?? []);

  // //新規タスクの追加
  // void addTask(String title) {
  //   state = [...state, Config(title: title)];
  // }
  void addCard() {
    state = [...state, Config(order: state.length + 1, url: '', group: '')];
  }

  // //タスクの削除
  // void deleteTask(Config target) {
  //   state = state.where((task) => task.id != target.id).toList();
  // }
}

final configListProvider =
    StateNotifierProvider<ConfigList, List<Config>>((ref) {
  return ConfigList([
    Config(order: 1, url: '', group: ''),
    Config(order: 2, url: 'http:2', group: 'group2'),
    Config(order: 3, url: 'http:3', group: 'group3'),
  ]);
});
