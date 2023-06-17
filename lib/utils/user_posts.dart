import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  final String name;

  UserPosts({ required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text(name,style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
              Icon(Icons.menu)
            ],
          ),
        ),

        // post
        Container(
          height: 300,
          color: Colors.grey[300],
        ),


        // buttons
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite_outline_rounded),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Icon(Icons.share),
                ],
              ),
              Icon(Icons.bookmark_border_outlined),
            ],
          ),
        ),

        // Liked by ...
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text("Liked by "),
              Text("bharat ", style: TextStyle(fontWeight: FontWeight.bold),),
              Text("and "),
              Text("others", style: TextStyle(fontWeight: FontWeight.bold),),
            ],
          ),
        ),

        // caption
        Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 8.0),
          child: RichText(
              text: const TextSpan(
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(text: "jay", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "This is a caption line written by the user who used to post in instagram")
                ]
              )
          ),
        )

      ],
    );
  }
}
