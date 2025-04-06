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

      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10),
          color: Colors.blueGrey,
          width: 300,
          height: 300,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                color: Colors.green[300],
                width: 100,
                height: 100,
                child: Text(
                  "Ahmed",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                color: Colors.amber[300],
                width: 100,
                height: 100,
                child: Text(
                  "Khaled",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
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
