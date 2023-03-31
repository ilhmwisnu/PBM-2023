import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          centerTitle: false,
          elevation: 0,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.chat_bubble_outline_outlined))
          ],
          title: Text("INSTAGRAM"),
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Story(),
                  SizedBox(width: 8),
                  Story(),
                  SizedBox(width: 8),
                  Story(),
                  SizedBox(width: 8),
                  Story(),
                ],
              ),
            ),
            Container(
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      CircleAvatar(),
                      SizedBox(width: 8),
                      Expanded(child: Text("ilhmwisnu")),
                      Icon(Icons.menu)
                    ],
                  ),
                ),
                Image(
                    image: NetworkImage(
                        "https://www.lamudi.co.id/journal/wp-content/uploads/2022/08/pantai-di-Banten-yang-Bagus.jpg")),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.favorite_border)),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.mode_comment_outlined)),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.send_outlined)),
                    Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.bookmark_border_rounded)),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Row(
                    children: [
                      Text(
                        "ilhmwisnu",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      SizedBox(width: 8),
                      Text("ini caption"),
                    ],
                  ),
                )
              ]),
            )
          ],
        ));
  }
}

class Story extends StatelessWidget {
  const Story({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 36,
        ),
        SizedBox(height: 8),
        Text("username"),
      ],
    );
  }
}
