import 'package:car_app/Screens/All.dart';
import 'package:car_app/Screens/audi.dart';
import 'package:car_app/Screens/mitti.dart';
import 'package:car_app/Screens/tesla.dart';
import 'package:car_app/Screens/teslapage.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with TickerProviderStateMixin {
  int currentpage = 0;
  int brand = 0;
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 4, vsync: this);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 176, 172, 172),

      appBar: AppBar(
             backgroundColor: const Color.fromARGB(255, 176, 172, 172),

        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {
                
              },
              icon: Icon(
                Icons.search_rounded,
                color: Colors.grey[800],
                size: 35,
              ))
        ],
        title: RichText(
            text: const TextSpan(
                style: TextStyle(color: Colors.black),
                children: [
              TextSpan(
                  text: "Choose",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  )),
              TextSpan(
                  text: " a Car",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 35))
            ])),
      ),
      body: Column(
        children: [
          const Row(
            children: [
              SizedBox(
                width: 19,
              ),
              Text(
                "Brands",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              )
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 176, 172, 172),
            ),
            child: TabBar(
              
              overlayColor: const MaterialStatePropertyAll( Colors.white),
          
                controller: tabController,
                dividerColor: const Color.fromARGB(255, 244, 232, 232),
                isScrollable: false,
                
                indicatorSize: TabBarIndicatorSize.label,
                indicator: BoxDecoration(
      
                  border: Border.all(color: Colors.blue, width: 1),
                  color: Colors.blue,
                  
                  borderRadius: BorderRadius.circular(12),
                ),
                
                tabs: [
                  Tab(
                    ///All
                    child: Container(
                        width: 90,
                        height: 55,
                        padding: const EdgeInsets.only(
                            top: 10, left: 10, bottom: 10, right: 10),
                        decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                         // color: currentpage==0?Colors.blue:Colors.white,
                            borderRadius: BorderRadius.circular(12)),
                        child: const Center(
                            child: Text(
                          "All",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color:  Colors.black,
                              fontSize: 19),
                        )),
                      ),
                    
                  ),
                  Tab(
                    ///Tesla
                    child: Container(
                      width: 100,
                      height: 75,
                      padding: const EdgeInsets.only(
                          top: 10, left: 10, bottom: 10, right: 10),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                    // color: indicator==1?Colors.blue:Colors.white
                      ),
          
                      child:
                          const Center(child: Image(image: AssetImage("img/t.webp"))),
                    ),
                  ),
                  Tab(
                    ///audi
                    child: Container(
                      width: 80,
                      height: 75,
                      padding: const EdgeInsets.only(
                          top: 10, left: 10, bottom: 10, right: 10),
                      decoration:
                          BoxDecoration(
                                border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(10),
                        //  color:indicator==2?Colors.blue: Colors.white,
                          ),
                      child:
                          const Center(child: Image(image: AssetImage("img/audi.png"))),
                    ),
                  ),
                  Tab(
                    //mitti
                    child: Container(
                      width: 80,
                      height: 65,
                      padding: const EdgeInsets.only(
                          top: 10, left: 10, bottom: 10, right: 10),
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.white),
          //color: indicator==3?Colors.blue:Colors.white
                          ),
                      child: const Center(
                          child: Image(image: AssetImage("img/mitti logo.png"))),
                    ),
                  ),
                ]),
          ),
          ///////////Tabs body/////////////////////
        const SizedBox(
            height: 27,
          ),
           Row(
            children: [
              const SizedBox(
                width: 19,
              ),
              const Text(
                'Available cars',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              const SizedBox(width: 170),
              // Icon(
              //   Icons.filter_alt_outlined,
              //   size: 35,
              //   color: Colors.grey,
              // ),
              IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>const teslacar()));
              }, icon: Icon(Icons.filter_alt_outlined,size: 35,color: Colors.grey[800],))
            ],
          ),
          Expanded(
              child: TabBarView(controller: tabController, children: [
            const Allpage(),
            const teslapage(),
            const audipage(),
            const mittipage(),
          ]))
        ],
      ),

///////////////Bottom app bar////////////////////////

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BottomAppBar(
          color: const Color.fromARGB(255, 176, 172, 172),
          child: Container(
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(35),
              color: Colors.black,
            ),
            child: Row(
              children: [
                const Spacer(),
                IconButton(
                    onPressed: () {
                      setState(() {
                        currentpage = 0;
                      });
                    },
                    icon: Icon(
                      Icons.crop_square,
                      color: currentpage == 0
                          ? Colors.white
                          : const Color.fromARGB(255, 80, 79, 79),
                      size: 35,
                    )),
                const Spacer(),
                IconButton(
                    onPressed: () {
                      setState(() {
                        currentpage = 1;
                      });
                    },
                    icon: Icon(
                      Icons.notification_important_outlined,
                      color: currentpage == 1
                          ? Colors.white
                          : const Color.fromARGB(255, 80, 79, 79),
                      size: 35,
                    )),
                const Spacer(),
                IconButton(
                    onPressed: () {
                    
                      setState(() {
                        currentpage = 2;
                      });
                    },
                    icon: Icon(
                      Icons.location_on_outlined,
                      color: currentpage == 2
                          ? Colors.white
                          : const Color.fromARGB(255, 80, 79, 79),
                      size: 35,
                    )),
                const Spacer(),
                IconButton(
                    onPressed: () {
                      setState(() {
                        currentpage = 3;
                      });
                    },
                    icon: Icon(
                      Icons.person_outline,
                      color: currentpage == 3
                          ? Colors.white
                          : const Color.fromARGB(255, 80, 79, 79),
                      size: 35,
                    )),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
