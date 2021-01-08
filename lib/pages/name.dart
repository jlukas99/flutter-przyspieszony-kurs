import 'package:flutter/material.dart';
import 'package:lekcja1/widgets/button.dart';

class NamePage extends StatefulWidget {
  @override
  _NamePageState createState() => _NamePageState();
}

class _NamePageState extends State<NamePage> {
  TextEditingController tekstController = TextEditingController();

  String tekst = "Witaj!";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Zamiania tekstu"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(tekst),
            input(),
            buttonOne(),
            SizedBox(height: 32),
            buttonTwo(),
          ],
        ),
      ),
    );
  }

  Widget buttonOne() {
    return Button(
      text: "Zmień tekst",
      onTap: () {
        setState(() {
          tekst = tekstController.text;
        });
      },
    );
  }

  Widget buttonTwo() {
    return Button(
      text: "Wyczyść inputa",
      onTap: () {
        setState(() {
          tekstController.clear();
        });
      },
    );
  }

  Widget input() {
    return Padding(
      padding: const EdgeInsets.all(64),
      child: TextField(
        controller: tekstController,
        decoration: InputDecoration(
          hintText: "Wpisz jakiś tekst :D",
        ),
      ),
    );
  }
}
