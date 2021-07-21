import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxcourse/translate/messageController.dart';

// ignore: must_be_immutable
class ShowMessage extends StatelessWidget {
  MessageController messageController=Get.put(MessageController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('Internationalization'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('hello'.tr,style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400),),
            GestureDetector(
              onTap: (){
                messageController.chaneMassage('fa','IR');
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                width: 200,
                height: 45,
                alignment: Alignment.center,
                color: Colors.indigo,
                child: Text('FA',style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
            ),
            GestureDetector(
              onTap: (){
                messageController.chaneMassage('en','US');
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                width: 200,
                height: 45,
                alignment: Alignment.center,
                color: Colors.greenAccent,
                child: Text('US',style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
            ),
            GestureDetector(
              onTap: (){
                messageController.chaneMassage('de','DE');
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                width: 200,
                height: 45,
                alignment: Alignment.center,
                color: Colors.orange,
                child: Text('DE',style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
