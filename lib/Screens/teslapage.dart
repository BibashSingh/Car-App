import 'package:car_app/Screens/All.dart';
import 'package:flutter/material.dart';

class teslacar extends StatefulWidget {
  const teslacar({super.key});

  @override
  State<teslacar> createState() => _teslacarState();
}

class _teslacarState extends State<teslacar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(onPressed: (){
          Navigator.pop(context,MaterialPageRoute(builder: (context) =>const Allpage(),));
        }, icon: const Icon(Icons.arrow_back,color: Colors.white,)),
        actions: [
          PopupMenuButton(
            shape: const RoundedRectangleBorder(
         borderRadius: BorderRadius.all(Radius.circular(10))),
            itemBuilder: (context) {
              return [
                const PopupMenuItem(child: Text("About car")),
                const PopupMenuItem(child: Text("About car")),
                const PopupMenuItem(child: Text("About car")),
                const PopupMenuItem(child: Text("About car")),
                const PopupMenuItem(child: Text("About car")),
              ];
            },
          ),
          
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 350,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                  bottomRight: Radius.circular(60)),
              color: Colors.black,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      padding: const EdgeInsets.only(
                          top: 10, left: 10, bottom: 10, right: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                    // color: indicator==1?Colors.blue:Colors.white
                      ),
          
                      child:
                          const Center(child: Image(image: AssetImage("img/t.webp"))),
                    ),
                    
                        const SizedBox(width: 12,),
                    RichText(
                        text: TextSpan(children: [
                      const TextSpan(
                          text: "Tesla Model S",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25)),
                      TextSpan(
                          text: "\n2021",
                          style: TextStyle(
                              color: Colors.grey[400],
                              fontWeight: FontWeight.w900,
                              fontSize: 25)),
                    ])),
                    const SizedBox(
                      width: 70,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    const SizedBox(
                      width: 9,
                    ),
                    const Text(
                      "4.8",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )
                  ],
                ),
                Container(
                  height: 250,
                  width: 400,
                  decoration: const BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                          image: AssetImage("img/modelxx.png"))),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          const Row(
            children: [
              SizedBox(width: 19,),
              Text(
                "Specifications",
                style: TextStyle(
                    fontWeight: FontWeight.normal, fontSize: 28, color: Colors.black),
              ),
            ],
          ),
          const SizedBox(height: 7,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 140,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.speed,
                      color: Colors.white,
                    ),
                    RichText(
                        text: const TextSpan(children: [
                      TextSpan(
                          text: "300",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: "km/hr",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                          ))
                    ]))
                  ],
                ),
              ),
              Container(
                height: 140,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.speed,
                      color: Colors.white,
                    ),
                    RichText(
                        text: const TextSpan(children: [
                      TextSpan(
                          text: "300",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: "km/hr",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                          ))
                    ]))
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 19,
          ),
          const Row(
            children: [
              SizedBox(width: 35,),
              Text(
                "Location",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 24,
                    color: Colors.black),
              ),
              SizedBox(width: 180,),
              Icon(Icons.directions_walk_outlined,color: Colors.grey,),
              Text("344 m",style: TextStyle(color: Colors.grey,fontSize: 20),)
            ],
          ),
          const SizedBox(height: 12,),
          const Row(
            children: [
              SizedBox(width: 30,),
              Icon(Icons.location_on_rounded,color: Colors.blue,),
              SizedBox(width: 12,),
              Text("Bharatpur-15,Ghorahi,Dang",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),)
            ],
          ),
          const SizedBox(height: 6,),
          Row(
            children: [
              Container(
                height: 72,
                width: 196,
                color: Colors.white,
                child: Center(
                  child: RichText(text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "\$250",
                        style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontSize: 23)
                      ),
                      TextSpan(text: "/day",style: TextStyle(fontWeight: FontWeight.normal,color: Colors.grey,fontSize: 23))
                    ]
                  )),
                ),
              ),
              Container(
                height: 72,
                width: 196,
                decoration: const BoxDecoration(
                color: Colors.blue,
                   borderRadius: BorderRadius.only(topLeft: Radius.circular(30),bottomRight: Radius.circular(30))
                ),
                child: const Center(
                  child:Text("Book now",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.white),)
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
