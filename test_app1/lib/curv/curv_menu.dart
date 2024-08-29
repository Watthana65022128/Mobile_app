import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'camera_page.dart';
import 'contact_page.dart';
import 'home_page.dart';
import '../profile_page.dart';

class CurvMenu extends StatelessWidget {
  const CurvMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      home: const CurvPage(),
    );
  }
}

class CurvPage extends StatefulWidget {
  const CurvPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CurvPage createState() => _CurvPage();
}

class _CurvPage extends State<CurvPage> {
  final _pageController = PageController();

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Curved Navigation Bar'),
        backgroundColor: const Color.fromARGB(255, 250, 248, 248),
        foregroundColor: Colors.black,
      ),
      body: PageView(
        controller: _pageController,
        children: const <Widget>[
          HomePage(),
          CameraPage(),
          ProfilePage(),
          ContactPage(),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blueGrey,
        buttonBackgroundColor: Colors.white,
        color: const Color.fromARGB(255, 255, 240, 219),
        height: 65,
        items: const <Widget>[
          Icon(Icons.home, size: 35, color: Colors.red),
          Icon(Icons.camera, size: 35, color: Colors.deepPurpleAccent),
          Icon(Icons.person, size: 35, color: Colors.green),
          Icon(Icons.phone, size: 35, color: Colors.blue),
        ],
        onTap: (index) {
          _pageController.animateToPage(
            index,
            duration: const Duration(microseconds: 300),
            curve: Curves.easeOut,
          );
        },
      ),
    );
  }
}
