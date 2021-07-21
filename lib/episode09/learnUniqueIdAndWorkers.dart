import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxcourse/episode09/counterController.dart';


// ignore: must_be_immutable
class UniqueIdAndWorkers extends StatelessWidget {
  CounterController myCounterController=Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unique ID And Workers'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<CounterController>(
              id: 'firstTextCount',
              
              builder: (CounterController counterController){
                return Text('value is ${counterController.count}',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),);
              },
            ),
            GetBuilder<CounterController>(
              id: 'secondTextCount',
              builder: (CounterController counterController){
                return Text('value is ${counterController.count}',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),);
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          myCounterController.increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
