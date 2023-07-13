import 'package:flutter/material.dart';
import 'package:instagram/pages/util/explore_grid.dart';

class UserSearch extends StatefulWidget {
  const UserSearch({super.key});

  @override
  State<UserSearch> createState() => _UserSearchState();
}

class _UserSearchState extends State<UserSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Container(
            padding: EdgeInsets.all(8.0),
            color: Colors.grey[300],
            child: Row(
              children: [
                Icon(Icons.search,
                color: Colors.grey[400],),
                SizedBox(width: 8,),
                Container(
                  child: Text("Search",
                  style: TextStyle(color: Colors.grey[500]),),
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