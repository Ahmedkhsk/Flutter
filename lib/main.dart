import 'package:flutter/material.dart';

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
    return Scaffold(
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
          IconButton(onPressed: null, icon: const Icon(Icons.search, size: 33)),
        ],
      ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 63, 164, 240),
        child: const Icon(Icons.add, size: 40),
      ),
      
      body: Center(
        child: const Text(
          "Hello Ahmed Khaled",
          style: TextStyle(
            fontSize: 30,
            color: Color.fromARGB(255, 63, 164, 240),
            fontWeight: FontWeight.bold,
            backgroundColor: Color.fromARGB(255, 0, 0, 0),
            fontFamily: "Cairo",
            letterSpacing: 4,
            wordSpacing: 2,
            height: 1.5,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          textDirection: TextDirection.ltr, // ده تستفاد منه لو عايز تكتب عربي
          
        ),
      ),
    );
  }
}