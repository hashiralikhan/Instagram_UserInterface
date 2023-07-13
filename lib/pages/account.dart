// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:instagram/pages/util/account_label1.dart';
import 'package:instagram/pages/util/account_label2.dart';
import 'package:instagram/pages/util/account_label3.dart';
import 'package:instagram/pages/util/account_label4.dart';
import 'package:instagram/pages/util/bubblesstories.dart';

class UserAccount extends StatefulWidget {
  const UserAccount({super.key});

  @override
  State<UserAccount> createState() => _UserAccountState();
}

class _UserAccountState extends State<UserAccount> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
            
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      shape: BoxShape.circle
                    ),
                  ),
                  //no of posts , following and followers
                  Column(
                    children: [
                      Text('237',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                      Text('posts')
                    ],
                  ),
                   Column(
                    children: [
                      Text('3756',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                      Text('Followers')
                    ],
                  ),
                   Column(
                    children: [
                      Text('48',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                      Text('following')
                    ],
                  ),
                  //name and bio
                  
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:10.0,left: 35),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('hashi',style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical:5.0),
                          child: Text('I create apps & games'),
                        ),
                        Text('rana-hashir is to be a engineer ',style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
    
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Center(child: Text("Edit Profile")),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(color: Colors.grey)
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Center(child: Text("Add Tools ")),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(color: Colors.grey)
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Center(child: Text("Insights")),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(color: Colors.grey)
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          
          //Stories
         , Padding(
           padding: const EdgeInsets.symmetric(horizontal:20.0,vertical: 10),
           child: Row(children: [
            BubbleStories(text: 'Story 1'),
            BubbleStories(text: 'Story 2'),
            BubbleStories(text: 'Story 3'),
            BubbleStories(text: 'Story 4'),
           ],
             
            ),
         ),
         TabBar(tabs: 
         [
          Tab(
            icon: Icon(Icons.grid_3x3_outlined),
          ),
          Tab(
            icon: Icon(Icons.video_call),
          ),
          Tab(
            icon: Icon(Icons.shop),
          ),
          Tab(
            icon: Icon(Icons.person),
          ),
         ],
         ),
         Expanded(
           child: TabBarView(children: [
            AccountLabel1(),
            AccountLabel2(),
            AccountLabel3(),
            AccountLabel4(),
            
           ]),
         )
          
          
          ],
        )
      ),
    );
  }
}