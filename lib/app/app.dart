import 'package:clean_arch_mvvm/presentation/home/HomePage.dart';
import 'package:clean_arch_mvvm/presentation/resourses/routes_manger.dart';
import 'package:clean_arch_mvvm/presentation/resourses/theme_manger.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  //const private named constructor
  const MyApp._internal();
  //Singleton
  static const MyApp _instance = MyApp._internal();
  //Factory for creating instances of the class
  factory MyApp() {
    return _instance;
  }
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: RouteGenerator.generateRoute,
      home: const HomePage(),
      theme: getApplicationTheme(),
    );
  }
}
