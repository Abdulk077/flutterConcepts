import 'package:flutter/material.dart';

class BottomSheetWidgets extends StatelessWidget {
  const BottomSheetWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Bottom Sheet Widgets'),
        ),
        body: Center(
          child: ElevatedButton(
              child: Text(" press to get bottom sheet"),
              onPressed: () {
                showModalBottomSheet(
                  backgroundColor: Theme.of(context).primaryColor,
                  elevation: 0,
                  isDismissible: false,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                  ),
                  context: context,
                  builder: (context) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ListTile(
                          title: Text('mango'),
                        ),
                        ListTile(
                          title: Text('oranges'),
                        ),
                        ListTile(
                          title: Text('banana'),
                        ),
                      ],
                    );
                  },
                );
              }),
        ));
  }
}
