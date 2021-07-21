import 'package:get/get.dart';

//class CounterController extends GetxController{
//  RxInt count=0.obs;
////  Rx<int> counter=Rx<int>(0);
//  void increment(){
//    count=count+1;
//  }
//}

class CounterController extends GetxController{
  var count=0;
//  Rx<int> counter=Rx<int>(0);
  void increment(){
    count=count+1;
    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    print('**********');
    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }


}