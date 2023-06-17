import 'package:flutter/material.dart';
import 'package:instagram_ui/utils/bubble_stories.dart';
import 'package:instagram_ui/utils/user_posts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List people = [
    "Your Story",
    "bharat",
    "chetna",
    "kiki",
    "jay",
    "chai_buoy",
    "deepak",
    "dhairya"
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("INSTAGRAM", style: TextStyle(color: Colors.black),),
            Row(
              children: [
                Icon(Icons.favorite_border),
                Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Icon(Icons.maps_ugc_outlined),
                )
              ],
            )

          ],
        ),
      ),
    body: Column(
      children: [
        // Stories

        Container(
          height: 130,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
              itemCount: people.length,
              itemBuilder: (context, index) {
            return BubbleStories(text: people[index]);
          }
          ),
        ),

        // Post
        Expanded(
          child: ListView.builder(itemCount: people.length,itemBuilder: (context, index){
            return UserPosts(name: people[index]);
          }),
        )
      ],
    ),
    );
  }
}
