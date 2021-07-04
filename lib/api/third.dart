import 'package:flutter/material.dart';
import 'package:zithara/api/second.dart';

class Third extends StatefulWidget {
  const Third({ Key? key }) : super(key: key);

  @override
  _ThirdState createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
  @override
 TextEditingController first = TextEditingController();
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
                top: 370,
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
    //                     Padding(
    //                       padding: const EdgeInsets.all(4.0),
    //                       child: CircleAvatar(backgroundImage: AssetImage('assets/images/a2.png'),
    //                  backgroundColor:Colors.yellow,  ),
    //                     ),
    //                     Padding(
    //                       padding: const EdgeInsets.all(4.0),
    //                       child: Container(height:50,width:80,child:Center(child: Text("",style: TextStyle(
    //                           color: Colors.white,
    //                         ))),
    // decoration: BoxDecoration ( color:Color.fromRGBO(195, 230, 249, 1   ),  borderRadius: BorderRadius.circular(80)),),
    //                     ),
    //                     Padding(
    //                       padding: const EdgeInsets.all(4.0),
    //                       child: Container(height:100,width:80,child:Center(child: Text("",style: TextStyle(
    //                           color: Colors.white,
    //                         ))),
    //                            decoration: BoxDecoration ( color:Color.fromRGBO(56, 40, 114, 1   ),  borderRadius: BorderRadius.circular(80)),),
    //                     ),
                      ],
                    ),
                  ),
                ],
              ),
              
              ),),
Positioned(top:250,left:10,child:
 Column(mainAxisAlignment:MainAxisAlignment.start,
   children: [
     Padding(
       padding: const EdgeInsets.only(right:140.0),
       child: Text("USER NAME",
                            // ignore: prefer_const_constructors
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.blueAccent
                            )),
     ),
     SizedBox(height:10),
   Padding(
     padding: const EdgeInsets.only(left:14.0),
     child: Container(height: 50,width:310,
        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20.0)),
         color: Color.fromRGBO( 230, 232, 232, 1 )
        ),child:            Padding(
          padding: const EdgeInsets.only(left:12.0),
          child: TextField(
             textAlign: TextAlign.left,
            controller: first,
            onChanged:(val)=> print(first.text),
            style: TextStyle(  fontWeight: FontWeight.bold, color: Colors.black87,  fontSize: 20,),
             decoration: InputDecoration(         
              border: InputBorder.none,),
          
          ),
        ),),
   ), ],
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
                        Text("Pick your",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black.withOpacity(1.0),
                                fontSize: 30,)),
                        Text("Avatar",
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
                top: 650,
                left: 100,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => Second()));
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
                        Text("Randomize",
                            // ignore: prefer_const_constructors
                            style: TextStyle(
                              fontSize: 20,fontWeight: FontWeight.bold,
                              color: Colors.blueAccent
                            )),                     
                  ),
                ),
              ),
            ])));
  }
}
