// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Builder(
            builder: (BuildContext context) {
              return ElevatedButton(
                onPressed: () async {

                  // Fluttertoast not working for now
                  /*Fluttertoast.showToast(
                    msg: "Clicked",
                    toastLength: Toast.LENGTH_SHORT,
                    timeInSecForIosWeb: 2,
                    gravity: ToastGravity.BOTTOM_RIGHT,

                  );*/

                  // SnackBar with Duration Settings
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Clicked'),
                    ),
                  );
                  await Future.delayed(const Duration(seconds: 1));
                  ScaffoldMessenger.of(context).removeCurrentSnackBar();
                },
                child: const Text("Click Me"),
              );
            },
          ),
        ),
      ),
    );
  }
}
