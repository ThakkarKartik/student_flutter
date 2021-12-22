import 'package:flutter/material.dart';
import 'layoutdemo.dart';
import 'complexLayout.dart';
import 'clickevent.dart';
import 'navigatedemo.dart';
void main() {
  runApp(FirstRoute());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Student Demo",
      home: Scaffold(
          appBar: AppBar(title: const Text("Student Sample App")),
          body: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Text(
                    "Hello World",
                    style: TextStyle(fontSize: 30, color: Colors.green[300]),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => true,
                  child: const Text("Continue"),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Image.network(
                    "data:image/jpeg;base64,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",
                    height: 100,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
