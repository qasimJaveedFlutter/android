
// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:week2/page_1.dart';
import 'package:week2/page_2.dart';
import 'package:week2/page_3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeWidget(),

      // Routes Method
      /*routes: {
        "page1" : (context) =>const Page1(),
        "page2" : (context) =>const Page2(),
        "page3" : (context) =>const Page3(),
      },*/

      //   OnGenerateRoute Method
      //   onGenerateRoute: OnGenerateRoutes.route,
    );
  }
}

/*
class OnGenerateRoutes{
  static Route<dynamic>? route(RouteSettings settings){
    switch(settings.name) {
      case "page1" : {
        return MaterialPageRoute(builder: (context) => const Page1());
      }case "page2" : {
        return MaterialPageRoute(builder: (context) => const Page2());
      }case "page3" : {
        return MaterialPageRoute(builder: (context) => const Page3());
      }
      default : {
        const Scaffold();
      }
    }
  }
}
*/

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Main Page"),
      ),
      body: Column(
        children: [
          Center(
            child: TextButton(onPressed: () {
              Navigator.pushNamed(context, "page1");
            }, child: const Text("Go to Page 1 from Main Page")),
          )
        ],
      ),
    );
  }
}
