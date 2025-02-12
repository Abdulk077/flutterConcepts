import 'package:flutter/material.dart';
import 'package:flutterconcepts/widgets/ListGridviews.dart';
import 'package:flutterconcepts/widgets/alert.dart';
\import 'package:flutterconcepts/widgets/imagetest.dart';
import 'package:flutterconcepts/widgets/rowsandcols.dart';
import 'package:flutterconcepts/widgets/button.dart';
import 'package:flutterconcepts/widgets/snackbar.dart';
import 'package:flutterconcepts/widgets/dismissible.dart';
import 'widgets/container_sized.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.blue,
      ),
      home: alertdialogtest(),
    );
  }
}
