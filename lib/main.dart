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

        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  color: Colors.purple[100],
                  borderRadius: BorderRadius.circular(66),
                ),
                margin: const EdgeInsets.all(10),
                width: 250,

                child: TextField(
                  decoration: InputDecoration(
                    hintText: "your Email:",
                    prefixIcon: const Icon(
                      Icons.person,
                      color: Color.fromARGB(255, 109, 30, 105),
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),

              Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  color: Colors.purple[100],
                  borderRadius: BorderRadius.circular(60),
                ),
                margin: const EdgeInsets.all(10),
                width: 250,

                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password:",
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: Color.fromARGB(255, 109, 30, 105),
                    ),
                    suffixIcon: const Icon(
                      Icons.visibility,
                      color: Color.fromARGB(255, 109, 30, 105),
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),

              Container(
                width: 250,
                margin: const EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 3,
                    backgroundColor: const Color.fromARGB(255, 109, 30, 105),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 50,
                      vertical: 20,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(66),
                    ),
                  ),
                  child: const Text(
                    "Login",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
