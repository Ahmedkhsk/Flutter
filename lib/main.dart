import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyProject(),
    );
  }
}

class MyProject extends StatelessWidget {
  const MyProject({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 10,
          title: const Text("Ahmed Khaled"),
          centerTitle: true,
          leading: const IconButton(
            onPressed: null,
            icon: Icon(Icons.menu, size: 33),
          ),
          actions: [
            IconButton(
              onPressed: null,
              icon: const Icon(Icons.message, size: 33),
            ),
            IconButton(
              onPressed: null,
              icon: const Icon(Icons.search, size: 33),
            ),
          ],
        ),

        body: Column(
          children: [
            TextField(
              //obscureText: false,
              //keyboardType: TextInputType.number,
              //textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                //hintText: "Email",
                labelText: "Email",
                labelStyle: const TextStyle(color: Colors.blue, fontSize: 20),
                // border: OutlineInputBorder(
                //   borderRadius: BorderRadius.circular(20),
                //   borderSide: const BorderSide(color: Colors.blue, width: 2),
                // ),
                //border: InputBorder.none,
                icon: const Icon(Icons.email, color: Colors.blue),
                prefixIcon: const Icon(Icons.email, color: Colors.blue),
                suffixIcon: const Icon(Icons.visibility, color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
