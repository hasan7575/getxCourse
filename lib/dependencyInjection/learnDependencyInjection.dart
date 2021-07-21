import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxcourse/dependencyInjection/myController.dart';

class LearnDependencyInjection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx((){
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new Text("${Get.find<MyController>(tag: "first").counter}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              new MaterialButton(onPressed: (){
                Get.find<MyController>(tag: "first").increment();
              },child: Text('increment',style: TextStyle(fontSize: 15,color: Colors.white),),color: Colors.redAccent,),

              new Text("${Get.find<MyController>(tag: "second").counter}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              new MaterialButton(onPressed: (){
                Get.find<MyController>(tag: "second").increment();
              },child: Text('increment',style: TextStyle(fontSize: 15,color: Colors.white),),color: Colors.redAccent,),
            ],
          );
        }),
      ),
    );
  }
}
