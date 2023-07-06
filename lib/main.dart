import 'package:flutter/material.dart';
import 'package:flutter_storage/ui/home_page.dart';
import 'package:flutter_storage/ui/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // theme: Themes(),
      themeMode: ThemeMode.dark,
      home: const HomePage(),
    );
  }
}
