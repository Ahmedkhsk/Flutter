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

      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                "assets/images/A.jpg",
                fit: BoxFit.cover,
                width: 250,
                height: 150,
              ),
            ),
          ),
          Image.asset(
            "assets/images/B.jpg",
            fit: BoxFit.cover,
            width: 250,
            height: 150,
          ),

          Container(
            margin: const EdgeInsets.all(10),
            child: Image.asset(
              "assets/images/D.jpg",
              fit: BoxFit.cover,
              width: 250,
              height: 150,
            ),
          ),

          // Container(
          //   margin: const EdgeInsets.all(10),
          //   child: Image.network(
          //     "https://images.pexels.com/photos/170811/pexels-photo-170811.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2.jpg",
          //     loadingBuilder:
          //         (context, child, loadingProgress) =>
          //             loadingProgress == null
          //                 ? child
          //                 : Container(
          //                   margin: const EdgeInsets.fromLTRB(166, 160, 0, 0),
          //                   child: const CircularProgressIndicator(),
          //                 ),
          //   ),
          // ),
          
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/C.jpg"),
            radius: 60,
          ),

          const SizedBox(height: 20),
          CircleAvatar(
            radius: 50,
            child: ClipOval(
            
              child: Image.asset(
                "assets/images/A.jpg",
              ),
            ),
          )
        ],
      ),
    );
  }
}
