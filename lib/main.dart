import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app00/tiles.dart';
import 'intro.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return
        MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            body: intro(),
          ),
        );

  }
}
