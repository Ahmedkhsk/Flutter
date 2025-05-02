import 'package:flutter/material.dart';
import 'package:hive_ce_flutter/adapters.dart';
import 'package:test/pages/Login.dart';
import 'package:test/pages/Signup.dart';
import 'package:test/pages/testHive.dart';
import 'package:test/pages/welcome.dart';

void main() async {
  await Hive.initFlutter();
  var box = await Hive.openBox('testBox');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/':       (context)   =>   const Welcome(),
        '/login':  (context)   =>   Login(),
        '/signup': (context)   =>   const Signup(),
        '/hive':   (context)   =>   Testhive(),
      },
    );
  }
}
