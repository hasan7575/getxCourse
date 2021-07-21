import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:getxcourse/myStateManagement/User.dart';

class UserController extends GetxController{
  Rx<User> user;

  UserController({@required this.user});


  changeUserName({@required String name}){
    user.update((User val) {
      user.value.name=name;
    });
  }

}