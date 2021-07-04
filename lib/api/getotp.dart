import 'package:otp_text_field/otp_text_field.dart';
import 'package:flutter/widgets.dart';

// ignore: use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:otp_text_field/style.dart';

class GetotpScreen extends StatefulWidget {
  @override
  _GetotpScreenState createState() => _GetotpScreenState();
}

class _GetotpScreenState extends State<GetotpScreen> {
  @override
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
                child: Padding(
                  padding: const EdgeInsets.only(right:15.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.67,
                    decoration: BoxDecoration(
                        image: new DecorationImage(
                          image: new AssetImage(
                            "assets/images/Layer.png",
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),),
                ),),
              Positioned(
                top: 220,
                left: 15,
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
                    child: Column(
                      children: [
                        Text("You are now a ",
                            // ignore: prefer_const_constructors
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            )),
                            Text("Zithara!",
                            // ignore: prefer_const_constructors
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,fontWeight: FontWeight.bold
                            )),
                      ],
                    ),
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
                    child: Text("Congratulations!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black.withOpacity(1.0),
                            fontSize: 30,fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
            ])));
  }
}
