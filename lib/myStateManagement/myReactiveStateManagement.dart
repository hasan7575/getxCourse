import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxcourse/myStateManagement/counterController.dart';

// ignore: must_be_immutable
class MyReactiveStateManagement extends StatelessWidget {
//  CounterController myCounterController=Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Reactive State Management'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
//            GetX<CounterController>(
////              init: CounterController(),
//              builder: (CounterController counterController){
//                return Text('${myCounterController.count}',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),);
//              },
//            )

            GetBuilder<CounterController>(
              init: CounterController(),
              initState: (data)=>CounterController().increment(),

              builder: (controller) {
                return Text(
                  '${controller.count}',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                );
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
//          Get.find<CounterController>().increment();

//        myCounterController.increment();

          Get.find<CounterController>().increment();
        },
      ),
    );
  }
}
