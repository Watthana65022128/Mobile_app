import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastEx extends StatelessWidget {
  const ToastEx({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text('Toast Ex'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Fluttertoast.showToast(
                msg: "This is a Toast message",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.black,
                textColor: Colors.white,
                fontSize: 16.0,
              );
            },
            child: const Text('Show Toast'),
          ),
        ),
      ),
    );
  }
}
