import 'package:flutter/material.dart';

class ShoppingListExamplePage extends StatefulWidget {
  @override
  _ShoppingListExamplePageState createState() =>
      _ShoppingListExamplePageState();
}

class _ShoppingListExamplePageState extends State<ShoppingListExamplePage> {
  TextEditingController _searchController = TextEditingController();

  List<String> _shoppingList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista zakupów"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      hintText: "Co musisz kupić?",
                    ),
                  ),
                ),
                SizedBox(
                  width: 32,
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      _shoppingList.add(_searchController.text);
                      _searchController.clear();
                    });
                  },
                  icon: Icon(Icons.add_circle),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.only(top: 24),
                itemCount: _shoppingList.length,
                itemBuilder: (_, index) {
                  return ListTile(
                    title: Text(_shoppingList[index]),
                    trailing: IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          setState(() {
                            _shoppingList.removeAt(index);
                          });
                        }),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
