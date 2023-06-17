import 'package:flutter/material.dart';
import 'package:instagram_ui/utils/explore_grid.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            padding: EdgeInsets.all(8.0),
            color: Colors.grey[400],
            child: Row(
              children: [
                Icon(Icons.search, color: Colors.grey[500],),
                Container(
                  child: Text("Search", style: TextStyle(color: Colors.grey[500]),),
                )
              ],
            ),
          ),
        ),
      ),
      body: ExploreGrid(),
    );
  }
}
