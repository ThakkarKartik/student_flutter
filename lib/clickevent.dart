import 'package:flutter/material.dart';
class MyClickClass extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(" Dynamic Page"),
        ),
        body: Center(
          child: UpdateText(),
        ),
      ),
    );
  }
}
class UpdateText extends StatefulWidget{
UpdateTextState createState() => UpdateTextState();
}
class UpdateTextState extends State{
  String textHolder = 'Old Text';
  changeText(){
    setState(() {
      textHolder = 'New Text';
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Text('$textHolder', style: TextStyle(fontSize: 24),),
            ),
            ElevatedButton(onPressed: () => changeText(),
                child: Text("Click me to change Text"),
            ),
          ],
        ),
      ),
    );
  }
}