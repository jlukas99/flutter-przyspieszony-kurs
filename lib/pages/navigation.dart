import 'package:flutter/material.dart';
import 'package:lekcja1/widgets/button.dart';

class NavigationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nawigacja"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Button(
              text: "Licznik",
              onTap: () => toPage("licznik", context),
            ),
            Button(
              text: "Ćwiczenie na kolumnach",
              onTap: () => toPage("test", context),
            ),
            Button(
              text: "Lista zakupów",
              onTap: () => toPage("lista zakupow", context),
            ),
            Button(
              text: "Zmieniacz tekstu",
              onTap: () => toPage("nazwa", context),
            ),
          ],
        ),
      ),
    );
  }

  toPage(String pageName, BuildContext context) =>
      Navigator.of(context).pushNamed(pageName);
}
