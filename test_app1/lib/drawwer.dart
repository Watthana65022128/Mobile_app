import 'package:flutter/material.dart';

class Drawwer extends StatelessWidget {
  const Drawwer({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DrawerPage(),
    );
  }
}

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            /*DrawerHeader(
              decoration: BoxDecoration(color: Colors.teal),
              child: Text(
                'Watthana Kayowaen',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),*/
            UserAccountsDrawerHeader(
              accountName: Text('Watthana Kayowaen'),
              accountEmail: Text('Jameskzyy@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  'Jame',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 34, 55, 245),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('home'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('setting'),
            ),
            ListTile(
              leading: Icon(Icons.money_sharp),
              title: Text('Sale_Poduct'),
            ),
            ListTile(
              leading: Icon(Icons.check_box),
              title: Text('Checked'),
            ),
            ListTile(
              leading: Icon(Icons.file_download),
              title: Text('Downloads'),
            ),
          ],
        ),
      ),
    );
  }
}
