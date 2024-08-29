import 'package:flutter/material.dart';

class ImagePageEX extends StatelessWidget {
  const ImagePageEX({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ImagePage(),
    );
  }
}

class ImagePage extends StatelessWidget {
  const ImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('แสดงรูปภาพ'),
      ),
      body: Stack(
        children: [
          Image.network(
            'https://images.unsplash.com/photo-1717076525469-1bb36da6a23e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwxMHx8fGVufDB8fHx8fA%3D%3D',
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://images.unsplash.com/photo-1720534490358-bc2ad29d51d5?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHw2fHx8ZW58MHx8fHx8',
                height: 200,
                width: 200,
              ),
            ],
          ),
          const Positioned(
            right: 20,
            top: 40,
            child: Icon(
              color: Colors.white,
              Icons.add_circle_outline_sharp,
              size: 50,
            ),
          ),
        ],
      ),
      /*body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Image.network(
                  'https://plus.unsplash.com/premium_photo-1710800032613-6e528143e119?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwzM3x8fGVufDB8fHx8fA%3D%3D'),
            ),
            const SizedBox(height: 50),
            Center(
              child: Image.network(
                  height: 200,
                  'https://plus.unsplash.com/premium_photo-1710800032613-6e528143e119?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwzM3x8fGVufDB8fHx8fA%3D%3D'),
            ),
            const SizedBox(height: 50),
            Center(
              child: Image.network(
                  'https://plus.unsplash.com/premium_photo-1710800032613-6e528143e119?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwzM3x8fGVufDB8fHx8fA%3D%3D'),
            ),
            const SizedBox(height: 50),
            Center(
              child: Image.network(
                  height: 200,
                  'https://plus.unsplash.com/premium_photo-1710800032613-6e528143e119?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwzM3x8fGVufDB8fHx8fA%3D%3D'),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),*/
    );
  }
}
