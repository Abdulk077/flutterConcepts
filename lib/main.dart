import 'package:flutter/material.dart';
import 'package:flutterconcepts/widgets/rowsandcols.dart';
import 'widgets/container_sized.dart';
import 'package:flutterconcepts/widgets/button.dart';
import 'package:flutterconcepts/widgets/snackbar.dart';
import 'package:flutterconcepts/widgets/dismissible.dart';


import 'package:flutterconcepts/widgets/ListGridviews.dart';

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
      home: Dismissiblewidget(),
    );
  }
}

