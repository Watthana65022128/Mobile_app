import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:test_app1/two_page.dart';
import 'web_view.dart';
import 'two_page.dart';

class OnePageEx extends StatelessWidget {
  const OnePageEx({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /*initialRoute: '/',
      routes: {
        '/': (context) => const OnePage(),
        "/two": (context) => const TwoPage(),
        "/web_view": (context) => const WebViewEX(),
      },*/
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.kanitTextTheme(),
      ),
      home: const OnePage(),
    );
  }
}

class OnePage extends StatelessWidget {
  const OnePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Page One'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => const WebViewEX(),
              ),
              (route) => false,
            );
            //Navigator.pushNamed(context, '/web_view');
          },
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: const Color.fromARGB(255, 81, 72, 121),
          ),
          child: const Text('Next to Page two'),
        ),
      ),
    );
  }
}
