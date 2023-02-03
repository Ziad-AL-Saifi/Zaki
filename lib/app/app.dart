import 'package:flutter/material.dart';

import 'utilities/routers/routers.dart';

class MyApp extends StatefulWidget {
  // const MyApp({super.key});

  const MyApp._internal();

  static const MyApp _instance = MyApp._internal();

  factory MyApp() {
    return _instance;
  }

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}
