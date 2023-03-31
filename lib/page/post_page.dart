import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pbm_2023/page/home_page.dart';

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0.3,
          title: Column(
            children: [
              Text(
                "ilhmwisnu",
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              Text(
                "Post",
                style: TextStyle(fontSize: 16),
              ),
            ],
          )),
      body: Column(children: [
        Post(),
      ]),
    );
  }
}
