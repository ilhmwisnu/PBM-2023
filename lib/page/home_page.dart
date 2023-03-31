import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.3,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: false,
        title: Text("INSTAGRAM"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.messenger_outline_rounded),
          ),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 102,
            child: ListView(
              padding: EdgeInsets.all(8.0),
              scrollDirection: Axis.horizontal,
              children: [
                Column(
                  children: [
                    CircleAvatar(radius: 32),
                    SizedBox(height: 4),
                    Text("username")
                  ],
                ),
                SizedBox(width: 12),
                Column(
                  children: [
                    CircleAvatar(radius: 32),
                    SizedBox(height: 4),
                    Text("username")
                  ],
                ),
                SizedBox(width: 12),
                Column(
                  children: [
                    CircleAvatar(radius: 32),
                    SizedBox(height: 4),
                    Text("username")
                  ],
                ),
                SizedBox(width: 12),
                Column(
                  children: [
                    CircleAvatar(radius: 32),
                    SizedBox(height: 4),
                    Text("username")
                  ],
                ),
                SizedBox(width: 12),
                Column(
                  children: [
                    CircleAvatar(radius: 32),
                    SizedBox(height: 4),
                    Text("username")
                  ],
                ),
                SizedBox(width: 12),
                Column(
                  children: [
                    CircleAvatar(radius: 32),
                    SizedBox(height: 4),
                    Text("username")
                  ],
                ),
                SizedBox(width: 12),
              ],
            ),
          ),
          Divider(height: 1),
          ...List.generate(10, (index) => Post())
        ],
      ),
    );
  }
}

class Post extends StatelessWidget {
  const Post({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(),
                SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("ilhmwisnu"),
                      Text("Jember"),
                    ],
                  ),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.menu))
              ],
            ),
          ),
          Image(
              image: NetworkImage(
                  "https://awsimages.detik.net.id/community/media/visual/2022/03/21/ilustrasi-objek-wisata-pantai.jpeg?w=700&q=90")),
          Row(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.chat_bubble_outline_outlined)),
              IconButton(onPressed: () {}, icon: Icon(Icons.send_outlined)),
              Spacer(),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.bookmark_border_outlined)),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text("999 Likes"),
          ),
          SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Row(
              children: [
                Text(
                  "ilhmwisnu",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                SizedBox(width: 4),
                Text("ini caption"),
              ],
            ),
          ),
          SizedBox(height: 8)
        ],
      ),
    );
  }
}
