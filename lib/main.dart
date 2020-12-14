    import 'package:flutter/material.dart';
import 'Screens//splashScreen.dart';
void main() => runApp(
      MyApp(),
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SafeArea(
        child: SplashScreen(),
      ),
    );
  }
}
