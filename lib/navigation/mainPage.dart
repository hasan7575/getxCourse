import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
              onPressed: () async {
//                var result=await Get.to(
//                  () => HomePage(),
//                  fullscreenDialog: true,
//                  transition: Transition.zoom,
//                  duration: Duration(milliseconds: 500),
//                  curve: Curves.linear,
//                  arguments: "Data from Main Page"
//                );
//                print(result);
//                await Get.off(
//                  () => HomePage(),
//                    arguments: "Data from Main Page"
//                );
//                await Get.offAll(
//                        () => HomePage(),
//                    arguments: "Data from Main Page"
//                );
              Get.toNamed("/homePage",

//                  parameters: {
//                    "key":"value"
//                  },

              );
//                Get.offAndToNamed("/homePage",
////                  parameters: {
////                    "key":"value"
////                  },

//                );
              },
              child: Text(
                'Go to homePage',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              color: Colors.orange,
            )
          ],
        ),
      ),
    );
  }
}
