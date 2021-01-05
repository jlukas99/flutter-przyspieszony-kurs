import 'package:flutter/material.dart';
import 'package:lekcja1/pages/test.dart';

class ShoppingListPage extends StatefulWidget {
  @override
  _ShoppingListPageState createState() => _ShoppingListPageState();
}

class _ShoppingListPageState extends State<ShoppingListPage> {
  TextEditingController productController = TextEditingController();

  List<String> productsList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista zakupów"),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: productController,
                    decoration: InputDecoration(
                      hintText: "Wpisz artykuł który chcesz kupić...",
                      icon: Icon(
                        Icons.shopping_cart,
                        color: Colors.redAccent,
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.add_circle),
                  onPressed: () {
                    setState(() {
                      productsList.add(productController.text);
                      productController.clear();
                    });
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: productsList.length,
              padding: EdgeInsets.only(top: 24),
              itemBuilder: (_, index) {
                return ListTile(
                  title: Text(productsList[index]),
                  leading: CircleAvatar(
                    child: Text("${index + 1}"),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      setState(() {
                        productsList.removeAt(index);
                      });
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
