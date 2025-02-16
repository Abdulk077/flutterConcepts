import 'package:flutter/material.dart';

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({super.key});

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  String currentvalue =  'One';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DropDown Widget'),
      ),
      body: Center(
      
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 70,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(16.0),
              child: DropdownButton<String>(
                value : currentvalue,
                icon:  Icon(Icons.arrow_downward),
                onChanged: (String? newValue) {
                  setState(() {
                    currentvalue = newValue!;
                  });
                },
                items: <String>['IND', 'AUS', 'UK', 'IRE'].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}
