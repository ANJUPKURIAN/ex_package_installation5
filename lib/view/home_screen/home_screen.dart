import 'package:ex_package_installation5/model/student_model/student_model.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // hive reference 
  var box = Hive.box<StudentModel>('abc');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    floatingActionButton: FloatingActionButton(
      /// add single data using key
       onPressed: () async {
        box.put("sampleobj",
        StudentModel(age: 10,name: "student1",place: "kottayam"));
      // await  box.put("sample", "Anju");
      setState(() {});
      },
      ),

     body: Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [Text(box.get("sampleobj") ?.place.toString()?? "no data")],
      ),
     ),

    );
  }
}


// get
// delete
// put
// add
// keys
// values
// deleteall
// clear
// getat
// deleteall