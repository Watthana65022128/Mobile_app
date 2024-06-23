import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 223, 109, 44),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Appication '),
          actions: <Widget>[
            PopupMenuButton<String>(
              icon: const Icon(
                Icons.more_vert,
              ),
              onSelected: (String result) {},
              itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                const PopupMenuItem<String>(
                  value: 'Option 1',
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.add_a_photo),
                      SizedBox(width: 10),
                      Text('Camera')
                    ],
                  ),
                ),
                const PopupMenuItem<String>(
                  value: 'Option 2',
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.search),
                      SizedBox(width: 10),
                      Text('search')
                    ],
                  ),
                ),
                const PopupMenuItem<String>(
                  value: 'Option 3',
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.settings),
                      SizedBox(width: 10),
                      Text('Setting')
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
