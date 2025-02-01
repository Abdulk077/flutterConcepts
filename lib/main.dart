import 'package:flutter/material.dart';

import 'widgets/container_sized.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  const MyApp({Key? key}) : super(key: key);
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.blue,
      ),
      home: Container_Sized(),
    );
  }
}

