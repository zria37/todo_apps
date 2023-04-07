import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:todo_apps/main.dart';
// cara memanggil semua menggunakan stf
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
        child: Text(
          "Hello",
          style: TextStyle(fontSize: 30),
        ),
    ),
    );
  }
}