import 'package:get/get.dart';

class MyController extends GetxController{
  RxInt counter=0.obs;

  increment(){
    counter=counter+1;
  }
}