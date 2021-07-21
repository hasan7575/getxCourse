import 'package:get/get.dart';
import 'package:getxcourse/fetchApi/model/Product.dart';
import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

class ProductsController extends GetxController{
  RxBool loading=true.obs;
  RxList<Product> products=<Product>[].obs;

  onInit(){
    setProducts();
  }

  setProducts()async{
    var url ="https://makeup-api.herokuapp.com/api/v1/products.json?brand=marienatie";

    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse =
      convert.jsonDecode(response.body) ;
       jsonResponse.forEach((element) {
         products.add(Product.fromJson(element));
       });
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }

    loading.value=false;

  }
}