import 'package:flutter/material.dart';

class MainBottomNaviBar extends StatelessWidget {
  const MainBottomNaviBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNaviBar(),
    );
  }
}

class BottomNaviBar extends StatefulWidget {
  const BottomNaviBar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BottomNaviBar createState() => _BottomNaviBar();
}

class _BottomNaviBar extends State<BottomNaviBar> {
  int _currenIndex = 0;

  final List<Widget> _children = [
    const HomeTab(),
    const SearchTab(),
    const ProfileTab(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navi '),
        backgroundColor: Colors.teal,
      ),
      body: _children[_currenIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currenIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Proflie',
          ),
        ],
      ),
    );
  }
}

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Home tab content'),
    );
  }
}

class SearchTab extends StatelessWidget {
  const SearchTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Search tab content'),
    );
  }
}

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Profile tab content'),
    );
  }
}
