import 'package:flutter/material.dart';
import 'package:instagram_ui/utils/bubble_stories.dart';
import 'package:instagram_ui/utils/explore_grid.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // profile picture
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    shape: BoxShape.circle,
                  ),
                ),

                // number of posts, followers, followings
                const Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            "51",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 24),
                          ),
                          Text("Posts")
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "501",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 24),
                          ),
                          Text("Followers")
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "101",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 24),
                          ),
                          Text("Following")
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Name and bio
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "jaydeepsinh devda",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    "I create apps in Flutter",
                  ),
                ),
                Text(
                  "djaybhai76@gmail.com",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Expanded(
                    child: Container(
                      padding: EdgeInsets.only(
                          left: 50.0, right: 50.0, top: 8.0, bottom: 8.0),
                      child: Center(child: Text("Edit profile")),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      padding: EdgeInsets.only(
                          left: 50.0, right: 50.0, top: 8.0, bottom: 8.0),
                      child: Center(child: Text("Message")),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // stories
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                BubbleStories(text: "story 1"),
                BubbleStories(text: "story 2"),
                BubbleStories(text: "story 3"),
                BubbleStories(text: "story 4"),
              ],
            ),
          ),

          // TabBar
          const TabBar(tabs: [
            Tab(
              icon: Icon(Icons.grid_on_sharp),
            ),
            Tab(
              icon: Icon(Icons.person),
            )
          ]),

          Expanded(
              child: TabBarView(
                children: [
                  ExploreGrid(),
                  ExploreGrid()
                ],
              ))
        ],
      )),
    );
  }
}
