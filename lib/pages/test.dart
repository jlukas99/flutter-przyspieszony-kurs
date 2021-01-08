import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kolumny i Wiersze"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.red,
                    child: Text("1"),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.blue,
                    child: Text("2"),
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.yellow,
                    child: Text("3"),
                  ),
                ),
                Container(
                  color: Colors.indigo,
                  width: 100,
                  child: Text("3.5"),
                ),
                Expanded(
                  child: Container(
                    color: Colors.green,
                    child: Text("4"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
