import 'package:flutter/material.dart';
import 'package:zithara/api/third.dart';

class Fourth extends StatefulWidget {
  const Fourth({ Key? key }) : super(key: key);

  @override
  _FourthState createState() => _FourthState();
}

class _FourthState extends State<Fourth> {
  @override
  int a=0,b=0,c=0,d=0,e=0,f=0;
  TextEditingController first = TextEditingController();
  TextEditingController last = TextEditingController();
  TextEditingController email = TextEditingController(); 
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
                        Text("Create your ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black.withOpacity(1.0),
                                fontSize: 30,)),
                        Text("Profile",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black.withOpacity(1.0),
                                fontSize: 30,fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
              ),
Positioned(top:250,left:2,child:
 Column(mainAxisAlignment:MainAxisAlignment.start,
   children: [
     Padding(
       padding: const EdgeInsets.only(right:140.0),
       child: Text("First Name"),
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
            onChanged:(val){ print(first.text);if(first.text.length!=0){a=1;}else{a=0;}},
            style: TextStyle(  fontWeight: FontWeight.bold, color: Colors.black87,  fontSize: 20,),
             decoration: InputDecoration(         
              border: InputBorder.none,),
          
          ),
        ),),
   ), SizedBox(height:20),
   Padding(
       padding: const EdgeInsets.only(right:140.0),
       child: Text("Last Name"),
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
            controller: last,
            onChanged:(val){print(last.text);if(last.text.length!=0){b=1;}else{b=0;}},
            style: TextStyle(  fontWeight: FontWeight.bold, color: Colors.black87,  fontSize: 20,),
             decoration: InputDecoration(         
              border: InputBorder.none,),
          
          ),
        ),),
   ), SizedBox(height:20),
   Padding(
       padding: const EdgeInsets.only(right:130.0),
       child: Text("Email Address"),
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
            controller: email,
            onChanged:(val){print(email.text);if(email.text.length!=0){c=1;}else{c=0;}},
            style: TextStyle(  fontWeight: FontWeight.bold, color: Colors.black87,  fontSize: 20,),
             decoration: InputDecoration(         
              border: InputBorder.none,),
          
          ),
        ),),
   ), SizedBox(height:40),
   Padding(
       padding: const EdgeInsets.only(right:170.0),
       child: Text("Gender"),
     ),
SizedBox(height:10),
Row(	       children: [            
 GestureDetector(onTap: (){setState(() {
   if(d==1){d=0;}
   else{d=1;e=0;f=0;}
 });},
   child: Padding(padding :EdgeInsets.only(left:10.0,right:8),child:  
    Container(height: 40,width:80,
    child:Center(child: Text("Male", style: TextStyle(  color: Colors.black87,  fontSize: 15,),)),
   margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(border: Border.all(color: Colors.blue),borderRadius: BorderRadius.all(Radius.circular(20.0)),
         color:d==1?Color.fromRGBO(222, 218, 238, 1): Colors.white,
        ),   
   ),),
 ),GestureDetector(onTap: (){setState(() {
   if(e==1){e=0;}
   else{e=1;d=0;f=0;}
 });},
   child: Padding(padding :EdgeInsets.only(left:10.0,right:8),child:  
    Container(height: 40,width:80,
    child:Center(child: Text("Female", style: TextStyle(  color: Colors.black87,  fontSize: 15,),)),
   margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(border: Border.all(color: Colors.blue),borderRadius: BorderRadius.all(Radius.circular(20.0)),
         color:e==1?Color.fromRGBO(222, 218, 238, 1):Colors.white,
        ),   
   ),),
 ),GestureDetector(
   onTap: (){setState(() {
   if(f==1){f=0;}
   else{f=1;e=0;d=0;}
 });},
   child: Padding(padding :EdgeInsets.only(left:10.0,right:8),child:  
    Container(height: 40,width:80,
    child:Center(child: Text("Others", style: TextStyle(  color: Colors.black87,  fontSize: 15,),)),
   margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(border: Border.all(color: Colors.blue),borderRadius: BorderRadius.all(Radius.circular(20.0)),
         color:f==1?Color.fromRGBO(222, 218, 238, 1):Colors.white,
        ),   
   ),),
 ),
                   	       ],    ),
           SizedBox(height: 10,),
//  Container(height: 50,margin: const EdgeInsets.symmetric(horizontal: 10),
//       decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20.0)),
//         gradient: LinearGradient(colors: [
// 	                            Color.fromRGBO(143, 148, 251, 1),
// 	                            Color.fromRGBO(143, 148, 251, .6),
// 	                          ]),
//       ),   
//  ),
 ],
 ),
 
 
 
 ),


              Positioned(
                top: 680,
                left: 100,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => Third()));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width*0.50,
                    padding: EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(border: Border.all(color: Colors.grey),

gradient: LinearGradient(
                            // ignore: prefer_const_literals_to_create_immutables
                            colors: a!=0&&b!=0&&c!=0 ?[
                             Color.fromRGBO(
                               113,119,183,1),
                               Color.fromRGBO(71, 169, 223, 1)
                            ]:[  Colors.white,
                              Colors.white10,],
                            
                            begin: Alignment.centerRight,
                            end: Alignment.centerLeft
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    // ignore: prefer_const_constructors
                    child: 
                        Text("Continue",
                            // ignore: prefer_const_constructors
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white
                            )),                     
                  ),
                ),
              ),
            ]),
            

            
            
            ));
  }
}
