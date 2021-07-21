import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ShowIngSnackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('show snackbar with GetX'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
              onPressed: () {
                Get.snackbar("title", "message",
                backgroundColor: Colors.black,
                  colorText: Colors.white,
                  borderRadius: 20,
                  icon: Icon(Icons.error,color: Colors.red,),
                  shouldIconPulse: false,
//                  borderColor: Colors.red,
//                  borderWidth: 2,
//                snackPosition: SnackPosition.TOP,
//                 mainButton: TextButton(onPressed: (){}, child: Text('mainButton',style: TextStyle(color: Colors.amber),),),
//                 messageText:Container(),
//                 titleText:
                overlayColor: Colors.grey.withOpacity(0.5),
                  overlayBlur: 1,
//                  dismissDirection: SnackDismissDirection.HORIZONTAL,
                duration: Duration(seconds: 5),
//                  animationDuration: Duration(milliseconds: 3),
//                isDismissible: false,
//                progressIndicatorBackgroundColor: Colors.purple,
//                  showProgressIndicator: true,
//                userInputForm: Form(child: TextField())
                );
              },
              child: Text(
                'show snackbar',
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
