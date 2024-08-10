
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/controller/counter_controller.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    CounterController counterController = Get.put(CounterController());
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.brown[900],
          leading: const Icon(Icons.countertops,color: Colors.white,),
          centerTitle: true,
          title: const Text('Counter app',style: TextStyle(
            color: Colors.white,
          ),),
        ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
              ()=> Text(counterController.count.value.toString(),style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold
                ),),
              ),
            ],
          ),
        ) ,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FloatingActionButton(

                backgroundColor: Colors.brown[900],
                onPressed: () {
                  counterController.reduceCount();
                },child: const Icon(Icons.remove,color: Colors.white,),),
              FloatingActionButton(
                backgroundColor: Colors.brown[900],
                onPressed: () {
                counterController.boostCount();
              },child: const Icon(Icons.add,color: Colors.white,),),
            ],
          ),
        ),
      )
    );
  }
}
