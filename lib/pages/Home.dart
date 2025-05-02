import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final String phoneNumber;
  const Home({super.key, required this.phoneNumber});
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Text("your phone is $phoneNumber", 
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.black
      ),)
    ));
  }
}
