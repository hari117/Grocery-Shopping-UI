import 'package:flutter/material.dart';
import 'package:groceryshoppingapp/screens/cart.screen.dart';
import 'package:groceryshoppingapp/screens/homescreen.dart';
import 'package:groceryshoppingapp/screens/splash.screen.dart';
import 'package:groceryshoppingapp/widgets/itemcard.dart';
import 'package:groceryshoppingapp/widgets/popular.widget.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen(),);
  }
}
