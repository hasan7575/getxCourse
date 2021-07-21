import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              child: Text("${Get.arguments}",style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),),
            ),
            FlatButton(
              onPressed: () {
                Get.back(result: "result from home page");
              },

              child: Text(
                'Go to back',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              color: Colors.red,
            )
          ],
        ),
      ),

    );
  }
}
