import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxcourse/fetchApi/controller/productController.dart';
import 'package:getxcourse/fetchApi/model/Product.dart';

// ignore: must_be_immutable
class ShowProductPage extends StatelessWidget {
  ProductsController productsController=Get.put(ProductsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('show products'),
      ),
      body: _buildBody(),
    );
  }

 Widget _buildBody() {
    return new Obx((){
      if(productsController.loading.value){
        return Center(
          child: CircularProgressIndicator(),
        );
      }
      return Container(
          child: GridView.builder(
            itemCount:productsController.products.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10

            ), itemBuilder: (BuildContext context, int index){
              Product product=productsController.products[index];
            return Container(
              child: Column(
                children: [
                  Expanded(child: Container(
                    width: double.infinity,
                    child: Image.network(product.imageLink,fit: BoxFit.cover,),
                  )),
                  new Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: Text(product.name),
                  ),
                ],
              ),
            );
          },
          )
      );
    });
 }
}
