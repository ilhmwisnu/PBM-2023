import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import 'model/user.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Future<User>? getData() async {
    Uri url = Uri.parse("https://reqres.in/api/users/2");

    final res = await http.get(url);
    await Future.delayed(Duration(seconds: 2));
    var data = jsonDecode(res.body);
    data = data["data"];
    final user = User.fromJson(data);
    // throw Error();
    return user;
  }

  Future<void> login() async {
    Uri url = Uri.parse("https://reqres.in/api/login");
    final res = await http.post(url, body: {
      "email": "eve.holt@reqres.in",
      "password": "cityslicka",
    });
    print(res.statusCode);
    print(res.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Profile")),
        body: FutureBuilder<User>(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Center(
                child: Text("Gagal Ambil Data"),
              );
            }

            if (snapshot.hasData) {
              final user = snapshot.data;
              return Center(
                  child: Column(
                children: [
                  SizedBox(height: 40),
                  CircleAvatar(
                    radius: 48,
                    backgroundImage:
                        user != null ? NetworkImage(user!.avatar) : null,
                  ),
                  SizedBox(height: 16),
                  Text(user?.firstName ?? "Nama"),
                  SizedBox(height: 4),
                  Text(user?.email ?? "Email"),
                ],
              ));
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ));
  }
}
