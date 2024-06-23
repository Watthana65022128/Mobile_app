// ignore_for_file: file_names

import 'package:flutter/material.dart';

class TabEx extends StatelessWidget {
  const TabEx({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Tabpage(),
    );
  }
}

class Tabpage extends StatelessWidget {
  const Tabpage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tab Example'),
          backgroundColor: Colors.red,
          bottom: const TabBar(
            labelColor: Color.fromARGB(255, 0, 0, 0),
            unselectedLabelColor: Color.fromARGB(255, 255, 255, 255),
            indicatorColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.home, color: Colors.white), text: 'Home'),
              Tab(
                  icon: Icon(Icons.start, color: Colors.white),
                  text: 'Payment'),
              Tab(
                  icon: Icon(Icons.settings, color: Colors.white),
                  text: 'Settings'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            HomeTab(),
            PaymentTab(),
            SettingTab(),
          ],
        ),
      ),
    );
  }
}

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Home');
  }
}

class PaymentTab extends StatelessWidget {
  const PaymentTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Payment');
  }
}

class SettingTab extends StatelessWidget {
  const SettingTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Setting');
  }
}
