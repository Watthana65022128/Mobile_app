import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageShowPage extends StatelessWidget {
  const ImageShowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ImageShow(),
    );
  }
}

class ImageShow extends StatefulWidget {
  const ImageShow({super.key});

  @override
  State<ImageShow> createState() => _ImageShowState();
}

class _ImageShowState extends State<ImageShow> {
  XFile? xfile;
  Uint8List? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Image Page'),
        backgroundColor: Colors.cyanAccent,
      ),
      body: ListView(
        children: [
          ElevatedButton(
            onPressed: () async {
              var file =
                  await ImagePicker().pickImage(source: ImageSource.camera);

              if (file != null) {
                xfile = file;
                image = await file.readAsBytes();
                setState(() {});
              }
            },
            child: const Text('Add Image'),
          ),
          (image ?? []).isEmpty ? Container() : Image.memory(image!),
        ],
      ),
    );
  }
}
