import 'package:get/get.dart';
import 'package:getxcourse/dependencyInjection/myController.dart';

class MyBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies

    Get.lazyPut<MyController>(() => MyController(),tag: "second");
    Get.put(MyController(),permanent: true,tag: "first");
  }

}