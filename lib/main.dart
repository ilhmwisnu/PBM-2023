import 'package:flutter/material.dart';
import 'package:pbm_2023/page/home_page.dart';
import 'package:pbm_2023/page/profile_page.dart';

import 'page/post_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardPage(),
      routes: {
        "/dashboard" :(context) => DashboardPage(),
        "/post" :(context) =>  PostPage()
      },
    );
  }
}

class DashboardPage extends StatefulWidget {
  DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int index = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        HomePage(),
        Center(
          child: Text("Explore"),
        ),
        Center(
          child: Text("Post"),
        ),
        Center(
          child: Text("Reels"),
        ),
        ProfilePage()
      ][index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        unselectedItemColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined), label: "Post"),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_collection_outlined), label: "Reels"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
