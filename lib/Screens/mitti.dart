import 'package:flutter/material.dart';

class mittipage extends StatefulWidget {
  const mittipage({super.key});

  @override
  State<mittipage> createState() => _mittipageState();
}

class _mittipageState extends State<mittipage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("mitti section",style: TextStyle(fontSize: 90,color: Colors.blue),))
      
    );
  }
}