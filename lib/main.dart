import 'package:symlercooksbake/view/splashpage.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blueGrey,
          backgroundColor: Colors.white,
        ),
      ),
      darkTheme: ThemeData.dark(),
      title: 'Symler Cooks & Bake',
      home: const Scaffold(
        body: SplashPage(),
      ),
    );
  }
}
