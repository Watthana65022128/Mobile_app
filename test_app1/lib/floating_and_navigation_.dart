import 'package:flutter/material.dart';

class FloatingAndNavigationExample extends StatelessWidget {
  const FloatingAndNavigationExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      home: const FloatingAndNavigationPage(),
    );
  }
}

class FloatingAndNavigationPage extends StatelessWidget {
  const FloatingAndNavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('Hello'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.home),
                color: const Color.fromARGB(255, 0, 112, 7),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.message),
                color: const Color.fromARGB(255, 0, 112, 7),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications),
                color: const Color.fromARGB(255, 0, 112, 7),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.account_circle),
                color: const Color.fromARGB(255, 0, 112, 7),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
