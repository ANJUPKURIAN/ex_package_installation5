// ignore_for_file: unused_local_variable

import 'package:ex_package_installation5/view/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';


 Future <void>main() async {
  await Hive.initFlutter();
   var box =await Hive.openBox('abc');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      home:HomeScreen() ,
    );
  }
}
