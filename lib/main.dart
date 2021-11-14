import 'package:pog_app2/imports.dart';
import 'package:pog_app2/pages/home.dart';
import 'package:pog_app2/pages/config.dart';
import 'package:pog_app2/themes/schemes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends HookConsumerWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      locale: locale,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        locale,
      ],
      theme: ThemeData.from(colorScheme: lightTheme),
      initialRoute: '/config',
      routes: {
        '/': (context) => const Home(),
        '/config': (context) => const Config(),
      },
    );
  }
}
