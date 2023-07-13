// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class UserReels extends StatefulWidget {
  const UserReels({super.key});

  @override
  State<UserReels> createState() => _UserReelsState();
}

class _UserReelsState extends State<UserReels> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Reels'),
    );
  }
}