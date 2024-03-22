import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_demo/buiesness/controller.dart';

class BusinessScreen extends StatelessWidget {
  final controller = Get.put(Controller());

  BusinessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("counter")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Text(
                    'clicks: ${controller.counter}',
                  )),
              ElevatedButton(
                child: const Text('Next Route'),
                onPressed: () {
                  //Get.to(Second());
                },
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () => controller.increment(),
        ));
  }
}
