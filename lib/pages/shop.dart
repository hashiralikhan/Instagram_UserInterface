import 'package:flutter/material.dart';

class UserShop extends StatefulWidget {
  const UserShop({super.key});

  @override
  State<UserShop> createState() => _UserShopState();
}

class _UserShopState extends State<UserShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('shop'),
    );
  }
}