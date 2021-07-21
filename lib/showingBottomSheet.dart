import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ShowBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('show ShowBottomSheet with GetX'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
              onPressed: () {
                Get.bottomSheet(
                  Container(
                    width: Get.width,
                    child: Wrap(
                      children: [
                        ListTile(
                          title: Text('DarkTheme'),
                          onTap: (){
                            Get.changeTheme(ThemeData.dark());
                            Get.back();
                          },

                        ),
                        ListTile(
                          title: Text('LigthTheme'),
                          onTap: (){
                            Get.changeTheme(ThemeData.light());
                            Get.back();
                          },
                        ),
                      ],
                    ),
                  ),
                  backgroundColor: Colors.blueGrey,
                  barrierColor: Colors.black.withOpacity(0.7),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(
                      color: Colors.red,
                      width: 0.5
                    )
                  ),
                  elevation: 0,
                   enterBottomSheetDuration: Duration(milliseconds: 1),

//                  enableDrag: false,
//                  isDismissible: false,
                );
              },
              child: Text(
                'show ShowBottomSheet',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              color: Colors.orange,
            )
          ],
        ),
      ),
    );
  }
}
