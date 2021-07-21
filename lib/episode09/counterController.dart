import 'package:get/get.dart';

class CounterController extends GetxController {
  var count = 0.obs;

//  Rx<int> counter=Rx<int>(0);
  void increment() {
    count = count + 1;
    update(['secondTextCount']);
  }

  void decrement() {
    count = count - 1;
    update(['secondTextCount']);
  }

  @override
  void onInit() {
//    ever(count,(_){
//      print('count is $count');
//    });

//    everAll([count], (_) {
//      print('count is $count');
//    });

//    once(count, (_) {
//      print('count is $count');
//    });

  debounce(count,(_){
      print('count is $count');
  },time: Duration(milliseconds: 6000));
    // TODO: implement onInit
    super.onInit();
  }
}
