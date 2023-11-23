import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Column(
  children: [
    ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) {
      return Container(
        height: 100,
        width: 400,
        color: Colors.black12,
      );
    },)
  ],
),
      
    );
  }
}