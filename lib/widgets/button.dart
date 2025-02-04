import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons'),
      ),
      body: Center( 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            TextButton(
              style: ButtonStyle(
              ),
              child: Text(
                  "press me ",
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                ),
              onPressed: (){},
              
              ),

              SizedBox(height: 20),

              Container(
                height: 60,
                width:300,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.red),  // Use MaterialStatePropertyAll
                    foregroundColor: MaterialStatePropertyAll(Colors.white),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    padding: MaterialStatePropertyAll(
                      EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    ),
                  ),


                  onPressed: (){
                    print("hii");
                  },
                  child: Text(
                    "press me ",
                    style: TextStyle(fontSize: 20, color: Colors.blue),
                  ),
                ),
              ),

            
          ],
        ),
      )
    );
  }
}