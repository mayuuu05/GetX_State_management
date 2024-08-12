import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/view/CRUD%20operation/crud_operation.dart';
import 'package:getx_state_management/view/counterPage.dart';
import 'package:getx_state_management/view/switch_screen/home_page.dart';
import 'package:getx_state_management/view/switch_screen/second_page.dart';

void main() {
  runApp(const GetXStateManagement());
}

class GetXStateManagement extends StatelessWidget {
  const GetXStateManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [

         GetPage(name: '/', page: () => CrudOperation(),),
        // GetPage(name: '/', page: () => HomePage(),transition: Transition.circularReveal),
        // GetPage(name: '/second', page: () => SecondPage(),transition: Transition.leftToRight),
      ],

    );
  }
}

