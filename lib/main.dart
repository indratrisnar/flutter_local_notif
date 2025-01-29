import 'package:flutter/material.dart';
import 'package:flutter_local_notif/config/local_notif.dart';
import 'package:flutter_local_notif/pages/home_page.dart';

final navigatorKey = GlobalKey<NavigatorState>();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalNotif.initPlugin();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      routes: {
        '/': (_) => HomePage(),
        '/detail': (context) {
          final arguments =
              ModalRoute.settingsOf(context)?.arguments as String?;
          return Scaffold(
            appBar: AppBar(title: Text('Detail')),
            body: Center(child: Text(arguments.toString())),
          );
        },
      },
    );
  }
}
