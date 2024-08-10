
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        leading: const Icon(Icons.menu,color: Colors.white,),
        title: const Text('Home Page',style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),),
      ),
      body: Container(
        alignment: Alignment.center,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor:WidgetStateProperty.all(Colors.deepPurple)
          ),
            onPressed: () {
            Get.toNamed('/second');
        }, child: const Text('Go to Second Screen',style: TextStyle(color: Colors.white),))
      ),
    );
  }
}
