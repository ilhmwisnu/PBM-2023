import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class StackPage extends StatefulWidget {
  const StackPage({super.key});

  @override
  State<StackPage> createState() => _StackPageState();
}

class _StackPageState extends State<StackPage> {
  XFile? photo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        title: Text("Stack"),
      ),
      body: Center(
        child: InkWell(
          onTap: () async {
            final ImagePicker picker = ImagePicker();
            photo = await picker.pickImage(source: ImageSource.camera);
            setState(() {});
          },
          child: Stack(
            children: [
              CircleAvatar(
                radius: 56,
                backgroundColor: Colors.amber,
                backgroundImage:
                    photo == null ? null : FileImage(File(photo!.path)),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  child: Image.network(
                    "https://cdn-icons-png.flaticon.com/512/6522/6522516.png",
                    width: 32,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
