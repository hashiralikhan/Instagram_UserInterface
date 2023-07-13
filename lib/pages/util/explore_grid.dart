import 'package:flutter/material.dart';

class ExploreGrid extends StatelessWidget {
  const ExploreGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: 20,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
         itemBuilder:(context, index){
          return Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              color: Colors.grey[500],
            ),
          );
         } ),
    );
  }
}