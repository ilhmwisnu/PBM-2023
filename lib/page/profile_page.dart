import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pbm_2023/model/user.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  User? user;

  Future<void> getData() async {
    Uri url = Uri.parse("https://reqres.in/api/users/1");
    final res = await http.get(url);
    user = User.fromJson(jsonDecode(res.body)["data"]);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Profile"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            getData();
          },
          child: Icon(Icons.person),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 40),
              CircleAvatar(
                radius: 56,
                backgroundImage:
                    user != null ? NetworkImage(user!.avatar) : null,
              ),
              SizedBox(height: 16),
              Text((user?.firstName ?? "") + (user?.lastName ?? "")),
              SizedBox(height: 4),
              Text(user?.email ?? ""),
            ],
          ),
        ));
  }
}
