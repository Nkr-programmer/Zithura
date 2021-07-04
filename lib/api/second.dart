import 'package:flutter/material.dart';
import 'package:zithara/api/getotp.dart';

class Second extends StatefulWidget {
  const Second({ Key? key }) : super(key: key);

  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  int a1=0,a2=0,a3=0,a4=0,a5=0,a6=0,a7=0,a8=0,a9=0,a0=0,a=-1;
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            // ignore: prefer_const_constructors
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,


            decoration: BoxDecoration(
              // ignore: prefer_const_constructors
              // ignore: unnecessary_new
              // ignore: prefer_const_constructors
              image: DecorationImage(
                // ignore: prefer_const_constructors
                image: AssetImage('assets/images/Rectangl.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(children: [
              // ignore: sized_box_for_whitespace

              // ignore: unnecessary_new
              Positioned(
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.20,
                    ////MediaQuery.of(context).size.height * 80,

                    // ignore: prefer_const_constructors
                    decoration: BoxDecoration(
                        // ignore: prefer_const_literals_to_create_immutables

                        // ignore: prefer_const_constructors
                        gradient: LinearGradient(
                            // ignore: prefer_const_literals_to_create_immutables
                            colors: [
                              Colors.pinkAccent,
                              Colors.cyan.shade300,
                            ],
                            begin: Alignment.centerRight,
                            end: Alignment.centerLeft),
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(28),
                          bottomRight: Radius.circular(28),
                        ))),
              ),
              
              Positioned(
                top: 300,
                left: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.4,
              child:Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: Column(mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(onTap: (){
                          setState(() {
                            if(a==0){a=-1;}
                            else{a=0;}
                          });
                        },
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(height:100,width:80,child:Center(child: Text("Fitness",style: TextStyle(
                                color: a==0?Colors.blue:Colors.white,
                              ))),
                                 decoration: BoxDecoration ( border: a==0?Border.all(color: Colors.blue):Border.all(color: Colors.white),color:a==0?Colors.white:Colors.brown,  borderRadius: BorderRadius.circular(20)),),
                          ),
                        ),
                        GestureDetector(onTap: (){
                          setState(() {
                            if(a==1){a=-1;}
                            else{a=1;}
                          });
                        },
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(height:50,width:80,child:Center(child: Text("Fitness",style: TextStyle(
                                color: a==1?Colors.blue:Colors.white,
                              ))),
                            decoration: BoxDecoration ( border: a==1?Border.all(color: Colors.blue):Border.all(color: Colors.white),color:a==1?Colors.white:Color.fromRGBO(195, 230, 249, 1   ),  borderRadius: BorderRadius.circular(10)),),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                          setState(() {
                            if(a==2){a=-1;}
                            else{a=2;}
                          });
                        },
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(height:100,width:80,child:Center(child: Text("Fitness",style: TextStyle(
                                color:a==2?Colors.blue:Colors.white,
                              ))),
                                 decoration: BoxDecoration (border: a==2?Border.all(color: Colors.blue):Border.all(color: Colors.white), color:a==2?Colors.white:Color.fromRGBO(56, 40, 114, 1   ),  borderRadius: BorderRadius.circular(20)),),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                padding: const EdgeInsets.only(left:1.0),
                child: Column(mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: (){
                          setState(() {
                            if(a==3){a=-1;}
                            else{a=3;}
                          });
                        },
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(height:30,width:160,child:Center(child: Text("Fitness",style: TextStyle(
                                color: a==3?Colors.blue:Colors.white,
                              ))),
                             decoration: BoxDecoration (border: a==3?Border.all(color: Colors.blue):Border.all(color: Colors.white), color:a==3?Colors.white:Color.fromRGBO(204, 189, 221, 1   ),  borderRadius: BorderRadius.circular(10)),),
                      ),
                    ),
                    Row(
                      children: [
                          GestureDetector(onTap: (){
                          setState(() {
                            if(a==4){a=-1;}
                            else{a=4;}
                          });
                        },
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(height:70,width:90,child:Center(child: Text("Fitness",style: TextStyle(
                                color: a==4?Colors.blue:Colors.white,
                              ))),
                             decoration: BoxDecoration (border: a==4?Border.all(color: Colors.blue):Border.all(color: Colors.white), color:a==4?Colors.white:Color.fromRGBO(231, 61, 98, 1   ),  borderRadius: BorderRadius.circular(20)),),
                          ),
                        ),
                         GestureDetector(
                           onTap: (){
                          setState(() {
                            if(a==5){a=-1;}
                            else{a=5;}
                          });
                        },
                           child: Padding(
                                               padding: const EdgeInsets.all(4.0),
                                               child: Container(height:70,width:150,child:Center(child: Text("Fitness",style: TextStyle(
                                color: a==5?Colors.blue:Colors.white,
                              ))),
                            decoration: BoxDecoration (border: a==5?Border.all(color: Colors.blue):Border.all(color: Colors.white), color:a==5?Colors.white:Color.fromRGBO(255, 213, 0, 1   ),  borderRadius: BorderRadius.circular(20)),),
                                             ),
                         ),
                      ],
                    ),
                     Row(
                       children: [
                         GestureDetector(
                           onTap: (){
                          setState(() {
                            if(a==6){a=-1;}
                            else{a=6;}
                          });
                        },
                           child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(height:84,width:150,child:Center(child: Text("Fitness",style: TextStyle(
                                color: a==6?Colors.blue:Colors.white,
                              ))),
                                decoration: BoxDecoration ( border: a==6?Border.all(color: Colors.blue):Border.all(color: Colors.white),color:a==6?Colors.white:Color.fromRGBO(204, 189, 221, 1   ),  borderRadius: BorderRadius.circular(20)),),
                                             ),
                         ),GestureDetector(onTap: (){
                          setState(() {
                            if(a==7){a=-1;}
                            else{a=7;}
                          });
                        },
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(height:84,width:90,child:Center(child: Text("Fitness",style: TextStyle(
                                color: a==7?Colors.blue:Colors.white,
                              ))),
                            decoration: BoxDecoration (border: a==7?Border.all(color: Colors.blue):Border.all(color: Colors.white), color:a==7?Colors.white:Color.fromRGBO(231, 61, 98, 1   ),  borderRadius: BorderRadius.circular(20)),),
                      ),
                    ), 
                       ],
                     ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: (){
                          setState(() {
                            if(a==8){a=-1;}
                            else{a=8;}
                          });
                        },
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(height:60,width:140,child:Center(child: Text("Fitness",style: TextStyle(
                                color:a==8?Colors.blue:Colors.white,
                              ))),
                               decoration: BoxDecoration (border: a==8?Border.all(color: Colors.blue):Border.all(color: Colors.white), color:a==8?Colors.white:Color.fromRGBO(57, 175, 228, 1    ),  borderRadius: BorderRadius.circular(20)),),
                          ),
                        ), GestureDetector(onTap: (){
                          setState(() {
                            if(a==9){a=-1;}
                            else{a=9;}
                          });
                        },
                          child: Padding(
                                              padding: const EdgeInsets.all(4.0),
                                              child: Container(height:60,width:100,
                                              child: Center(child: Text("Fitness",style: TextStyle(
                                color: a==9?Colors.blue:Colors.white,
                              ))),
                                            decoration: BoxDecoration (border: a==9?Border.all(color: Colors.blue):Border.all(color: Colors.white), color:a==9?Colors.white:Color.fromRGBO(204, 189, 221, 1   ),  borderRadius: BorderRadius.circular(20)),
                                              ),
                                            ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
                ],
              ),
              
              ),),
              Positioned(
                top: 230,
                left: 10,
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    // ignore: prefer_const_constructors
                    child: 
                        Text("Tap to select any 5 Preferences",
                            // ignore: prefer_const_constructors
                            style: TextStyle(
                              fontSize: 15,fontWeight: FontWeight.bold,
                              color: Colors.blueAccent
                            )),                     
                  ),
                ),
              ),
              
              Positioned(
                top: 90,
                left: 18,
                child: Container(
                  width: MediaQuery.of(context).size.width * .76,
                  height: MediaQuery.of(context).size.height * 0.16,
                  // ignore: prefer_const_constructors
                  margin: EdgeInsets.only(
                      top: 0.0, left: 30.0, right: 30.0, bottom: 20.0),

                  // ignore: prefer_const_constructors
                  decoration: BoxDecoration(
                      // ignore: prefer_const_literals_to_create_immutables
                      boxShadow: <BoxShadow>[
                        // ignore: prefer_const_constructors
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(
                            5.0,
                            5.0,
                          ),
                          blurRadius: 10.0,
                          spreadRadius: 2.0
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  // ignore: prefer_const_constructors
                  child: Center(
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Lets",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black.withOpacity(1.0),
                                fontSize: 30,)),
                        Text("Personalize",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black.withOpacity(1.0),
                                fontSize: 30,fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 600,
                left: 100,
                child: GestureDetector(
              onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => GetotpScreen()));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width*0.50,
                    padding: EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    // ignore: prefer_const_constructors
                    child: 
                        Text("Show More",
                            // ignore: prefer_const_constructors
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.blueAccent
                            )),                     
                  ),
                ),
              ),
            ])));
  }
}
