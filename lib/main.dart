import 'package:flutter/material.dart';
import 'package:lekcja1/pages/counter.dart';
import 'package:lekcja1/pages/shopping_list.dart';
import 'package:lekcja1/pages/test.dart';

//Funkcja która startuje naszą aplikacje
void main() {
  runApp(App());
}

//Główna klasa naszej aplikacji
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ShoppingListPage(),
    );
  }
}
