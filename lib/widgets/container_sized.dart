import 'package:flutter/material.dart';

class Container_Sized extends StatelessWidget {
  const Container_Sized({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("App Bar ")
        ),
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                spreadRadius: 5,
                color: Colors.black),
                ]),
          child: Center(
              child: Container(
                  color: Colors.red,
                  margin: EdgeInsets.all(2),
                  child: 
                    Text("hello",style: TextStyle(fontSize: 20)),
                ),
              ),
            ),
          )
        
      );
  }
}