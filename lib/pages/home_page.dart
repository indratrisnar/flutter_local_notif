import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_local_notif/config/local_notif.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: () {
                LocalNotif.showNotif(
                  title: 'From Local Notif',
                  body: 'From Homepage',
                  payload: jsonEncode({
                    'navigate_to': '/detail',
                    'arguments': 'LN',
                  }),
                );
              },
              child: Text('Show Notif'),
            ),
            OutlinedButton(
              onPressed: () {
                LocalNotif.cancelNotif();
              },
              child: Text('Cancel Notif'),
            ),
          ],
        ),
      ),
    );
  }
}
