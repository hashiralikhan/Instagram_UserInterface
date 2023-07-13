// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instagram/pages/util/bubblesstories.dart';
import 'package:instagram/pages/util/user_posts.dart';

class UserHome extends StatelessWidget {
  UserHome({super.key});
  final List people =[
    "umaier",'umber','arshad','irshad','usman','ahsan'

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

backgroundColor: Colors.transparent,
elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Instagram"),
            Row(
              children: [
                Icon(Icons.add),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14.0),
                  child: Icon(Icons.favorite),
                ),
                Icon(Icons.share),
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          //stories
          Container(
            height: 130,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: people.length,
              itemBuilder:(context, index){
                return BubbleStories(text:people[index]);
              } 
              ),
          ),
          //Posts
          Expanded(
            child: ListView.builder(
              itemCount: people.length,
              itemBuilder:(context, index){
                return UserPosts(name: people[index]);
              } ),
          )
        ],
      ),

    );
  }
}