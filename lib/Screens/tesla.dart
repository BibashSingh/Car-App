import 'package:flutter/material.dart';

class teslapage extends StatefulWidget {
  const teslapage({super.key});

  @override
  State<teslapage> createState() => _teslapageState();
}

class _teslapageState extends State<teslapage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("TESLA CAR",style: TextStyle(fontSize: 90,color: Colors.blue),),),
    );
  }
}