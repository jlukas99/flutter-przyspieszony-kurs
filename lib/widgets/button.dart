import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Function onTap;

  Button({
    @required this.text,
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        // onLongPress: () {
        //   print("onLongPress");
        // },
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF8360c3),
                Color.fromRGBO(46, 191, 145, 1),
                // Colors.lime,
              ],
              // begin: Alignment.topCenter,
              // end: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.circular(100),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(1, 1),
                blurRadius: 8,
                spreadRadius: 0.5,
              ),
            ],
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 16,
          ),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              //fontWeight: FontWeight.bold,
              letterSpacing: 1.5,
            ),
          ),
        ),
      ),
    );
  }
}
