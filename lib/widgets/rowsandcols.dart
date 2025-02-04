import 'package:flutter/material.dart';

class RowsCols extends StatelessWidget {
  const RowsCols({super.key});

  @override
  Widget build(BuildContext context) {
    // here we use mediaquery to get the size of device
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("RowsCols"),
      ),
      body: Container(
        height: h,
        width: w,
        color: Colors.green,
        child: Column(
          // for column main axis nad crossaxisalignments
          // is work oppositely
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          //Wrap(
          //we use wrap for to avoid overflow in our frontend
          // here we can use directioin and alignment for our wrap
          // we use wrap when it needed ex: during
          // taking note fram user in container
          //direction: Axis.vertical,
          //alignment: WrapAlignment.start,

          //Row(

          // this alignment is to use the how to alingn
          //the iteam from start from end
          // mainaxis alignment horizontal
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //crossaxis alignment vertical

          //crossAxisAlignment: CrossAxisAlignment.center ,
          children: [
            Container(
              height: 60,
              width: 60,
              color: Colors.red,
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.blue,
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.orange,
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}
