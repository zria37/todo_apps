import 'package:flutter/material.dart';
import 'package:todo_apps/screen/homepage.dart';

// ini untuk utama yang akan di running berpusat kesini
void main(List<String> args) {
  runApp(MyApp());
}
// ini untuk manggil semua tinggal stls 
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: "Monserrat",
      ),
      routes: {
        'homepage' : (context) => Homepage(),
      },
      // ini untuk halaman yang paling pertama gunakan nama file
      initialRoute: 'homepage',
    );
  }
}