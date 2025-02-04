import 'package:flutter/material.dart';

class ListGrid extends StatefulWidget {
  const ListGrid({super.key});

  @override
  State<ListGrid> createState() => _ListGridState();
}

class _ListGridState extends State<ListGrid> {
  List<String> fruits = ['mango', 'orange', 'banana', 'chocolate'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Grid'),
      ),
      body: Container(
        color: Colors.red,
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2
          ),
          padding: const EdgeInsets.all(8.0),
          itemCount: fruits.length,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.blue,
              child: ListTile(
                title: Text(fruits[index]),
                onTap: () {
                  // Handle click event here
                  print('Clicked on ${fruits[index]}');
                },
              ),
            );
          },
        ),
      ),
    );
  }
}