import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_test/model/model_data.dart';
import 'package:getx_test/route/route.dart';
import 'package:getx_test/second_screen.dart';

class FirstScreen extends StatelessWidget {

  TextEditingController _nameController = TextEditingController();
  TextEditingController _ageController = TextEditingController();
  var _counter = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(SecondScreeen()), child: Icon(Icons.add),),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () => Get.toNamed(secondScreen),
                  child: Text("Go to Second Screen")),
              ElevatedButton(onPressed: () {
                Get.snackbar("Title", "Message");
              }, child: Text("Show Snackbar")),
              ElevatedButton(onPressed: () {
                Get.defaultDialog(title: "Title",);
              }, child: Text("Show Dialogue")),
              TextField(
                controller: _nameController,
                decoration: InputDecoration(
                    hintText: "Enter your name"
                ),
              ),
              TextField(
                controller: _ageController,
                decoration: InputDecoration(
                    hintText: "Enter your age"
                ),
              ),
              ElevatedButton(onPressed: () {
                final name = _nameController.text;
                final age = _ageController.text;
                final box = GetStorage();
                box.write("data", MyData(name: name, age: age));
                print("Added");
              }, child: Text("Add")),
              ElevatedButton(onPressed: () {
                _counter + 1;
              }, child: Obx(() {
                return Text(_counter.toString());
              }))
            ],
          ),
        ),
      ),
    );
  }
}
