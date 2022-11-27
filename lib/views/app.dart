import 'package:flutter/material.dart';
import 'package:weather/screens/navigation_bar_screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const NavigationBarScreen(),
    );
  }
}
