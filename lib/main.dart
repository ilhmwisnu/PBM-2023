import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Halaman1(),      
      home: Halaman2(),
    );
  }
}

// CONTOH Stateless Widget
class Halaman1 extends StatelessWidget {
  const Halaman1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ini AppBar"),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Ini Widget 1"),
              Text("Ini Widget 2"),
              Container(
                height: 100,
                width: 100,
                color: Colors.amber,
              ),
              ElevatedButton(
                onPressed: () {
                  print("Hello World");
                },
                child: Text("Ini Elevated Button"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// CONTOH Stateful Widget
class Halaman2 extends StatefulWidget {
  const Halaman2({super.key});

  @override
  State<Halaman2> createState() => _Halaman2State();
}

class _Halaman2State extends State<Halaman2> {
  int angka = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
      ),
      body: Center(child: Text(angka.toString())),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          angka = angka + 1;
          setState(() {});
        },
      ),
    );
  }
}
