import 'dart:io';

import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue.shade100,
        drawer: Drawer(
            child: ListView(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: Colors.amber),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 36,
                    backgroundImage: FileImage(File("path")) ,
                  ),
                  const SizedBox(height: 16),
                  const Text("Ilham Wisnu"),
                  const SizedBox(height: 8),
                  const Text("ilhamwisnu@gmail.com"),
                ],
              ),
            )
          ],
        )),
        appBar: AppBar(
          title: const Text("Stack"),
        ),
        body: const Center(
          child: Text("Drawer"),
        ));
  }
}
