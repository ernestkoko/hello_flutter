
import "package:flutter/material.dart";
import './screens/home.dart';

void main() {
  runApp( HelloFlutterApp(),

  );
}
class HelloFlutterApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hello flutter app",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Title in ApBar",),

        ),
        body: Home()
      ),


    );
  }

}
