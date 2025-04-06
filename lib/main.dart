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
          color: Colors.blueGrey,
          width: 300,
          height: 300,

          child: Stack(

            children: [
            
              Positioned(
                top: 9,
                left: 9,
                child: Container(
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
              ),

              Positioned(
                bottom: 9,
                left: 9,
                child: Container(
                  alignment: Alignment.center,
                  color: const Color.fromARGB(255, 84, 140, 195),
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
              ),
    
              Positioned(
                right: 9,
                bottom: 9,
                child: Container(
                  alignment: Alignment.center,
                  color: const Color.fromARGB(255, 230, 180, 136),
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
              ),
           
              Positioned(
                top: 9,
                right: 9,
                child: Container(
                  alignment: Alignment.center,
                  color: const Color.fromARGB(255, 2, 10, 2),
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
              ),
        
              Positioned(
                top: 100,
                right: 100,
                
                child: Container(
                  alignment: Alignment.center,
                  color: const Color.fromARGB(255, 227, 75, 204),
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
              ),
            
            ],
          ),
        ),
      ),
    );
  }
}
