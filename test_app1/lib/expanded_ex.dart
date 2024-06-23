import 'package:flutter/material.dart';

class ExpandedEx extends StatelessWidget {
  const ExpandedEx({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Expandedpage(),
    );
  }
}

class Expandedpage extends StatelessWidget {
  const Expandedpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expanded Example'),
        backgroundColor: const Color.fromARGB(255, 35, 80, 230),
      ),
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.red,
            height: 100,
            child: const Text('Fixed Heigth Container'),
          ),
          Expanded(
            child: Container(
              color: Colors.green,
              child: const Text('Expanded  Container'),
            ),
          ),
          Expanded(
            child: Container(
              color: const Color.fromARGB(255, 250, 253, 53),
              child: const Text('Expanded  Container'),
            ),
          ),
          Container(
            color: Colors.red,
            height: 100,
            child: const Text('Fixed Heigth Container'),
          ),
        ],
      ),
    );
  }
}
