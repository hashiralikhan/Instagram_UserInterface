// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  final String name;
  const UserPosts({super.key,required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left:10.0,bottom: 10,top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  //profile photo
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle
                    ),
                  ),
                  SizedBox(width: 20,),
                  Text(name,style: TextStyle(fontWeight: FontWeight.bold),)
                ],
              ),
              Icon(Icons.menu)
            ],
          ),
        ),
        //post
        Container(
          height: 300,
          color: Colors.grey[300],
        ),

        //Below the posts ->Buttons & comments
        Padding(
          padding: EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal:10.0),
                                    child: Icon(Icons.chat_bubble_outline),
                                  ),
                  Icon(Icons.share),
        
                ],
              ),
              Icon(Icons.bookmark)
              ],
          ),
        )
      //comments
      ,Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text('Liked by '),
            Text('Hashir',style: TextStyle(fontWeight: FontWeight.bold),),
            Text(' and '),
                      Text('others',style: TextStyle(fontWeight: FontWeight.bold),),
      
          ],
        ),
      ),
      //Captions
      Padding(
        padding: const EdgeInsets.only(left:8.0),
        child: RichText(
          text: TextSpan(
          style: TextStyle(color: Colors.black),
          children:[
             TextSpan(
              text: name,
            style: TextStyle(fontWeight: FontWeight.bold)
          ),
           TextSpan(
              text: 'I turn the Dirt they throwing into riches til in filthy and that why',
            
          )
          ]
          ),
          
        )
      )
      
      ],
    );
  }
}