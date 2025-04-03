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

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        // mainAxisSize: MainAxisSize.max,
        // crossAxisAlignment: CrossAxisAlignment.start,
    
        children: [
          Container(
            //color: const Color.fromARGB(255, 252, 220, 210),
            margin: const EdgeInsets.all(55),

            //EdgeInsets.fromLTRB(22, 22, 15, 17),
            padding: //EdgeInsets.fromLTRB(22, 5, 3, 6),
                EdgeInsets.all(11),

            height: 280,
            width: 280,

            alignment: Alignment.center,

            //transform: Matrix4.rotationZ(.02),
            decoration: BoxDecoration(
              //borderRadius: BorderRadius.circular(60),
              shape: BoxShape.circle,

              /*
           shape
           borderRadius
            لو عملت الاتنين في نفس الوقت هيديك ايرور  
          */
              color: const Color.fromARGB(255, 212, 188, 188),
              // border: Border.all(
              //   color: const Color.fromARGB(255, 63, 164, 240),
              //   width: 10,
              // ),
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
          
          const SizedBox(
            height: 20,
          ),

          Text(
            "Shawky",
            style: TextStyle(backgroundColor: Colors.tealAccent, fontSize: 22),
          ),

          const SizedBox(
            height: 20,
          ),

          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite,color: Colors.red, size: 99,),
          ),
        
        ],
      
      ),
    );
  }
}
