import 'package:flutter/material.dart';
import 'package:unbin/welcome_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Universitas Binaniaga',
      theme: ThemeData(),
      home: const Welcome(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Universitas Binaniaga',
      theme: ThemeData(),
      home: const MainScreen(),
    );
  }
}
