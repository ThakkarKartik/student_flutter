import 'package:flutter/material.dart';
import 'image_row.dart';
class LayoutDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Layout Desing",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Layout Desing"),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ImageRow(),
              ImageRow(),
              ImageRow(),
              ImageRow(),
            ],
          ),
        ),
      ),
    );
  }
}