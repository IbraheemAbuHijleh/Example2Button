import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatefulWidget{
@override
  State<MyApp>createState()=>MyAppState();
}
class MyAppState extends State<MyApp>{
  bool status=true;
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("Button Example 2"),),
      body: Container(
        child: Column(
          children: [
            IconButton(onPressed: (){
              setState(() {
                status=true;
              });
            }, icon: Icon(Icons.add)),
           status? Icon(Icons.star) :Icon(Icons.border_bottom_outlined),
            IconButton(onPressed: (){
              setState(() {
                status =false;
              });
            }, icon: Icon(Icons.remove)),
          ],
        ),
      ),
    ),
  );
  }

}