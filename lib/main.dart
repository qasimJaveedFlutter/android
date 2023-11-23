// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          selectedIconTheme: IconThemeData(color: Colors.red),
          unselectedItemColor: Colors.black26,
          selectedFontSize: 16,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home" , tooltip: "Home Page"),
            BottomNavigationBarItem(icon: Icon(Icons.home_repair_service), label: "Service" , tooltip: "Repair"),
            BottomNavigationBarItem(icon: Icon(Icons.location_on_outlined), label: "Home" , tooltip: "Where are you"),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: "Home" , tooltip: "info"),
          ],
        ),
      ),
    );
  }
}


