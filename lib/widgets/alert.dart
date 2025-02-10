import 'package:flutter/material.dart';

class alertdialogtest extends StatelessWidget {
  const alertdialogtest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Dialog Test'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Show Alert'),
          onPressed: ()  {
            _showDialog(context);
          },
        ),
      )
    )
    ;
  }
}


Future<void> _showDialog(BuildContext context) async {
  return showDialog(
    context: context,
    builder: (BuildContext){
      return AlertDialog(
        title: Text('Dialog Title'),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              Text("This is a dialog box"),

            ],
          )
        ),
        actions: [
          TextButton(
            onPressed: () {}, child: Text("aproved")),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Dismiss'),
          ),
        ],
      );
    }
  );
} 