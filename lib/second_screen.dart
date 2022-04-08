import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class SecondScreeen extends StatelessWidget {
  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){print(box.read("data"));},
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Text("",
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
