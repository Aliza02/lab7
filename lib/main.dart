import 'dart:isolate';

import 'package:flutter/material.dart';

void main() {
  void isofunction(var msg) {
    for (int i = 0; i < 7; i++) {
      for (int j = 0; j <= i * 2; j++) {
        debugPrint("$j");
      }
      debugPrint(" ");
    }
  }

  Isolate.spawn(isofunction, "Isolate Function");

  debugPrint("Hello Main 1");
  debugPrint("Hello Main 2");
  debugPrint("Hello Main 3");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Maps Sample App'),
              backgroundColor: Colors.green[700],
            ),
            body: const Text("Concurrency example")));
  }
}
