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

      body: Container(

        color: Colors.blueGrey,
        width: double.infinity,
        height: 300,
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                color: Colors.amber[300],
                width: 122,
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
            ),
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.center,
                color: Colors.blue[300],
                width: 122,
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
            ),
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                color: Colors.red[300],
                width: 122,
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
            ),
          ],
        ),
      ),
    );
  }
}
