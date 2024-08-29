import 'package:flutter/material.dart';

class GradientColor extends StatelessWidget {
  const GradientColor({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GradientColorPage(),
    );
  }
}

class GradientColorPage extends StatelessWidget {
  const GradientColorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            center: Alignment.center,
            radius: 0.5,
            /*begin: Alignment.topCenter,
            end: Alignment.bottomRight,*/
            colors: [
              Color.fromARGB(255, 227, 227, 238),
              Color.fromARGB(255, 237, 170, 253),
            ],
          ),
        ),
        child: const Center(
          child: Text('Gradient Bacground'),
        ),
      ),
    );
  }
}
