import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        leading: Icon(Icons.menu,color: Colors.white,),
        title: Text('Second Page',style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
        ),),
      ),
      body: Center(
          child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:WidgetStateProperty.all(Colors.deepPurple)
              ),
              onPressed: () {
                Get.back();
              }, child: Text('Back on Home page',style: TextStyle(color: Colors.white),))
      ),
    );
  }
}
