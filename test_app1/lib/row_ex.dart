import 'package:flutter/material.dart';

class RowExample extends StatelessWidget {
  const RowExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Register'),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text('Sing in'),
              ),
              const TextField(
                style: TextStyle(color: Color.fromARGB(221, 0, 19, 192)),
                decoration: InputDecoration(
                  labelText: 'Username',
                  labelStyle: TextStyle(color: Colors.black),
                  filled: true,
                  fillColor: Colors.white54,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  prefixIcon: Icon(Icons.person,
                      color: Color.fromARGB(255, 15, 11, 11)),
                ),
              ),
              const SizedBox(height: 20),
              const Text('Password'),
              const TextField(
                style: TextStyle(color: Color.fromARGB(221, 0, 19, 192)),
                obscureText: true,
                decoration: InputDecoration(
                  fillColor: Colors.white54,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  prefixIcon:
                      Icon(Icons.lock, color: Color.fromARGB(255, 15, 11, 11)),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton.icon(
                icon: const Icon(Icons.lock),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.only(
                    left: 18,
                    right: 25,
                    top: 10,
                    bottom: 10,
                  ),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                ),
                label: const Text('Sign in'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
