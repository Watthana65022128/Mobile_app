import 'package:flutter/material.dart';

class Listview extends StatelessWidget {
  const Listview({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ListView'),
          backgroundColor: Colors.blue,
        ),
        body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return ListTile(
              leading: const Icon(Icons.person),
              title: Text('Person ${index + 1}'),
              subtitle: const Text('Sub Title'),
              trailing: const Icon(
                Icons.arrow_right,
                color: Colors.blue,
              ),
            );
          },
        ),
        /*body: ListView(
          children: const <Widget>[
            ListTile(
              leading: Icon(Icons.map),
              title: Text('item1'),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('item2'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('item3'),
            ),
          ],*/
      ),
    );
  }
}
