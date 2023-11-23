import 'package:car_app/Screens/teslapage.dart';
import 'package:flutter/material.dart';

class Allpage extends StatefulWidget {
  const Allpage({super.key});

  @override
  State<Allpage> createState() => _AllpageState();
}

class _AllpageState extends State<Allpage> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisSpacing: 12,
          childAspectRatio: 2/3,
          crossAxisSpacing: 12,
          mainAxisExtent: 150),
      itemCount: 4,
      padding: const EdgeInsets.all(19),
      itemBuilder: (context, index) {
        return Container(
          height: 100,
           width: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      height: 100,
                      width: 200,
                      child: Image.asset(
                        "img/modelxx.png",
                      )),
                  RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(
                          text: "Tesla Model X",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black),
                        ),
                        TextSpan(
                            text: "\n                 2080",
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 18,
                                color: Colors.grey[800])),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 28,
                  ),
                  RichText(
                      text: const TextSpan(children: [
                    TextSpan(
                      text: "\$180",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.black),
                    ),
                    TextSpan(
                        text: "/day",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 25,
                            color: Colors.grey))
                  ])),
                  const SizedBox(width: 58.5),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context,MaterialPageRoute(builder: (_)=>const teslacar()));
                    },
                    child: Container(
                      height: 50,
                      width: 160,
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(17),
                            bottomRight: Radius.circular(17)),
                      ),
                      child: const Center(
                          child: Text(
                        "Details",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 23,
                            color: Colors.white),
                      )),
                    ),
                  )
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
