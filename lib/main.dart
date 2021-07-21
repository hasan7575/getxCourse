import 'package:flutter/material.dart';
import 'package:getxcourse/dependencyInjection/learnDependencyInjection.dart';
import 'package:getxcourse/dependencyInjection/myBinding.dart';
import 'package:getxcourse/fetchApi/view/showProducts.dart';
import 'package:getxcourse/navigation/homePage.dart';
import 'package:getxcourse/navigation/mainPage.dart';
import 'package:getxcourse/navigation/unknownRoute.dart';
import 'package:getxcourse/showingBottomSheet.dart';
import 'package:get/get.dart';
import 'package:getxcourse/translate/message.dart';
import 'package:getxcourse/translate/showMessage.dart';

import 'episode09/learnUniqueIdAndWorkers.dart';
import 'myStateManagement/myReactiveStateManagement.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter GetX',
      initialRoute: "/ShowProductPage",
      translations: Messages(),
//      initialBinding: MyBinding(),
//      locale: Locale('fa','IR'),
     locale: Get.deviceLocale,
      fallbackLocale: Locale('en','US'),
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.cupertinoDialog,
      unknownRoute:GetPage(name: '/notfound',page: ()=>UnknownRoute()) ,
      getPages: [
        GetPage(name: "/ShowProductPage",page: ()=>ShowProductPage()),
        GetPage(name: "/LearnDependencyInjection",page: ()=>LearnDependencyInjection(),binding: MyBinding()),
        GetPage(name: "/showMessage",page: ()=>ShowMessage(),),
        GetPage(name: "/uniqueIdAndWorkers",page: ()=>UniqueIdAndWorkers(),),
        GetPage(name: "/homePage",page: ()=>HomePage(),),
        GetPage(name: "/mainPage",page: ()=>MainPage(),),
        GetPage(name: "/MyReactiveStateManagement",page: ()=>MyReactiveStateManagement(),),


      ],
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
//      home:MainPage(),
    );
  }
}





