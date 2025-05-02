import 'package:flutter/material.dart';
import 'package:hive_ce/hive.dart';

class Testhive extends StatelessWidget {
  Testhive({super.key});
  final box = Hive.box('testBox');
  //write function
  void writeData() {
    box.put('name1', 'Ahmed');
    box.put('name2', 'Mohamed');
  }
  //read function
  void readData() {
    // ignore: avoid_print
    print(box.get('name1')); 
  }
  //delete function
  void deleteData() {
    box.delete('name1');
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Hive",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: writeData, child: Text("Write")),
              ElevatedButton(onPressed: readData, child: Text("Read")),
              ElevatedButton(onPressed: deleteData, child: Text("Delete")),
            ],
          ),
        ),
      ),
    );
  }
}
