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
        //backgroundColor: const Color.fromARGB(255, 63, 164, 240),
        child: const Icon(Icons.add, size: 40),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            
            Container(
              margin: const EdgeInsets.only(
                top: 20,
                bottom: 20,
                left: 20,
                right: 20,
              ),
              height: 280,
              width: 280,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: const Color.fromARGB(255, 212, 188, 188),
              ),
              child: const Text(
                "Ahmed Khaled",
                style: TextStyle(
                  fontSize: 25,
                  color: Color.fromARGB(255, 63, 164, 240),
                  fontWeight: FontWeight.bold,
                  fontFamily: "Cairo",
                  letterSpacing: 4,
                  wordSpacing: 2,
                  height: 1.5,
                ),
              ),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 
                  Container(
                    margin: const EdgeInsets.only(
                      top: 20,
                      bottom: 20,
                      left: 20,
                      right: 20,
                    ),
                    height: 100,
                    width: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: const Color.fromARGB(255, 212, 188, 188),
                    ),
                    child: const Text(
                      "Ahmed",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 63, 164, 240),
                        fontWeight: FontWeight.bold,
                        fontFamily: "Cairo",
                        letterSpacing: 4,
                        wordSpacing: 2,
                        height: 1.5,
                      ),
                    ),
                  ),
                  
                  Container(
                    margin: const EdgeInsets.only(
                      top: 20,
                      bottom: 20,
                      left: 20,
                      right: 20,
                    ),
                    height: 100,
                    width: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: const Color.fromARGB(255, 212, 188, 188),
                    ),
                    child: const Text(
                      "Khaled",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 63, 164, 240),
                        fontWeight: FontWeight.bold,
                        fontFamily: "Cairo",
                        letterSpacing: 4,
                        wordSpacing: 2,
                        height: 1.5,
                      ),
                    ),
                  ),
                  
                  Container(
                    margin: const EdgeInsets.only(
                      top: 20,
                      bottom: 20,
                      left: 20,
                      right: 20,
                    ),
                    height: 100,
                    width: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: const Color.fromARGB(255, 212, 188, 188),
                    ),
                    child: const Text(
                      "Shawky",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 63, 164, 240),
                        fontWeight: FontWeight.bold,
                        fontFamily: "Cairo",
                        letterSpacing: 4,
                        wordSpacing: 2,
                        height: 1.5,
                      ),
                    ),
                  ),
           
                  Container(
                    margin: const EdgeInsets.only(
                      top: 20,
                      bottom: 20,
                      left: 20,
                      right: 20,
                    ),
                    height: 100,
                    width: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: const Color.fromARGB(255, 212, 188, 188),
                    ),
                    child: const Text(
                      "Hassan",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 63, 164, 240),
                        fontWeight: FontWeight.bold,
                        fontFamily: "Cairo",
                        letterSpacing: 4,
                        wordSpacing: 2,
                        height: 1.5,
                      ),
                    ),
                  ),
                
                ],
              ),
            ),

            Container(
              margin: const EdgeInsets.only(
                top: 20,
                bottom: 20,
                left: 20,
                right: 20,
              ),
              height: 280,
              width: 280,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: const Color.fromARGB(255, 212, 188, 188),
              ),
              child: const Text(
                "Ahmed Khaled",
                style: TextStyle(
                  fontSize: 25,
                  color: Color.fromARGB(255, 63, 164, 240),
                  fontWeight: FontWeight.bold,
                  fontFamily: "Cairo",
                  letterSpacing: 4,
                  wordSpacing: 2,
                  height: 1.5,
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.only(
                top: 20,
                bottom: 20,
                left: 20,
                right: 20,
              ),
              height: 280,
              width: 280,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: const Color.fromARGB(255, 212, 188, 188),
              ),
              child: const Text(
                "Ahmed Khaled",
                style: TextStyle(
                  fontSize: 25,
                  color: Color.fromARGB(255, 63, 164, 240),
                  fontWeight: FontWeight.bold,
                  fontFamily: "Cairo",
                  letterSpacing: 4,
                  wordSpacing: 2,
                  height: 1.5,
                ),
              ),
            ),
          
          ],
        ),
      ),
    );
  }
}
