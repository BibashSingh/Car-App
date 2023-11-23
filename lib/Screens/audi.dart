import 'package:flutter/material.dart';

class audipage extends StatefulWidget {
  const audipage({super.key});

  @override
  State<audipage> createState() => _audipageState();
}

class _audipageState extends State<audipage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(child: Text("audi",style: TextStyle(fontSize: 90,color: Colors.blue),),),
    );
  }
}