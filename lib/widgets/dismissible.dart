import 'package:flutter/material.dart';

class Dismissiblewidget extends StatefulWidget {
  const Dismissiblewidget({super.key});

  @override
  State<Dismissiblewidget> createState() => _DismissiblewidgetState();
}

class _DismissiblewidgetState extends State<Dismissiblewidget> {
  @override
  List<String> fruit = ['mango', 'orange', 'banana', 'chocolate'];

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dismissible"),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          child: ListView.builder(
            itemCount: fruit.length,
            itemBuilder: (context, index) {
              final fruits = fruit[index];
              return Dismissible(
                  onDismissed: (direction) {
                    if (direction == DismissDirection.startToEnd) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(fruit[index]),
                          backgroundColor: Colors.red,
                        ),
                      );

                    }
                    else{
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            content: Text(fruit[index]),
                            backgroundColor: Colors.green
                        ),
                      );
                    }
                  },
                  key: Key(fruits),
                  background: Container(
                    color: Colors.red,
                  ),
                  secondaryBackground: Container(
                    color: Colors.green,
                  ),
                  child: Card(
                      child: ListTile(
                        title: Text(fruit[index]),
                      )));
            },
          ),
        ));
  }
}
