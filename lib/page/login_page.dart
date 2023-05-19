import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  void login() async {
    Uri url = Uri.parse("https://reqres.in/api/login");
    final res = await http.post(url, body: {"email": "eve.holt@reqres.in"});

    print(res.body);
    print(res.statusCode);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          login();
        },
        child: Text("Login"),
      )),
    );
  }
}
