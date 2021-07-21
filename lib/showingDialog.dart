import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ShowDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('show dialog with GetX'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
              onPressed: () {
                Get.defaultDialog(
                  title: "This is title of dialog",
                  middleText: "This is middle text of dialog",
                  titleStyle: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold,fontSize: 20),
                  middleTextStyle: TextStyle(color: Colors.indigo.withOpacity(0.8),fontSize: 15),
//                  backgroundColor: Colors.teal,
                  radius: 8,
//                  content: Row(
//                    children: [
//                      Text('content text'),
//                      SizedBox(width: 15,),
//                      CircularProgressIndicator()
//                    ],
//                  ),
                  textConfirm: "textConfirm",
                  textCancel: "textCancel",
                  onConfirm: (){
                  },
                  onCancel: (){
                  },
                  confirmTextColor: Colors.purple,
                  cancelTextColor: Colors.red,
//                  cancel: Text("cancel"),
//                 confirm:
                barrierDismissible: false,
                  onWillPop: ()async{
                    return false;
                },

                );
                
              },
              child: Text(
                'show dialog',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              color: Colors.indigo,
            )
          ],
        ),
      ),
    );
  }
}
