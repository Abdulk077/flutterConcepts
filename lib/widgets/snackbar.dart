import 'package:flutter/material.dart';

class SnackbarWidgettest extends StatelessWidget {
  const SnackbarWidgettest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Snackbar"),
        ),
        body: Container(
            child: Center(
              child: ElevatedButton(
                  onPressed: () {
                    final snackbar = SnackBar(
                      action: SnackBarAction(
                          label: 'undo',
                          onPressed: (){}),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      behavior: SnackBarBehavior.floating,
                      duration: const Duration(milliseconds: 3000),

                      content: Text("This is an error"),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackbar);
                  },
                  child: Text("show snackbar")),
            )));
  }
}
