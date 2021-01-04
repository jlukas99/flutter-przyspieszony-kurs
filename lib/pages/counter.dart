import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int liczba = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(liczba.toString()),
            RaisedButton(
              onPressed: () {
                setState(() {
                  liczba++;
                });
              },
              child: Text("Zwiększ o jeden"),
            ),
          ],
        ),
      ),
    );
  }
}
