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

  void addCard() {
    state = [...state, Config(order: state.length + 1, url: '', group: '')];
  }

  void reorderCard(int oldIndex, int newIndex) {
    final insertIndex = oldIndex < newIndex ? newIndex - 1 : newIndex;
    final item = state.removeAt(oldIndex);
    state.insert(insertIndex, item);
    state = [...state];
  }

  void removeCard(Config target) {
    state.remove(target);
    state = [...state];
  }

  void editCard(Config target) {}
}

final configListProvider =
    StateNotifierProvider<ConfigList, List<Config>>((ref) {
  return ConfigList([
    Config(order: 1, url: '', group: ''),
    Config(order: 2, url: 'http:2', group: 'group2'),
    Config(order: 3, url: 'http:3', group: 'group3'),
  ]);
});
