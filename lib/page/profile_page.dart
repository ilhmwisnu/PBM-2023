import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text("ilhmwisnu"),
          centerTitle: false,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.add_box_outlined)),
            IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(216),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      CircleAvatar(radius: 45),
                      Expanded(
                        child: Column(
                          children: [
                            Text("99"),
                            Text("Posts"),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text("99"),
                            Text("Followers"),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text("99"),
                            Text("Following"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text("Ilham Wisnu"), Text("Ini Bio")],
                  ),
                ),
                SizedBox(height: 16),
                TabBar(
                  labelColor: Colors.black,
                  dividerColor: Colors.black,
                  indicatorColor: Colors.black,
                  tabs: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Icon(Icons.grid_on_outlined),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Icon(Icons.tag),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(children: [
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, crossAxisSpacing: 2, mainAxisSpacing: 2),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/post");
                },
                child: Container(
                  color: Colors.amber,
                ),
              );
            },
          ),
          Center(child: Text("Tagged")),
        ]),
      ),
    );
  }
}
