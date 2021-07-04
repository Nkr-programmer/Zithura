
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';
import 'package:simple_timer/simple_timer.dart';
import 'package:zithara/api/fourth.dart';
import 'package:zithara/login.dart';
import 'package:zithara/zit/splash.dart';

// ignore: use_key_in_widget_constructors
class GetotpScreen extends StatefulWidget {
  @override
  _GetotpScreenState createState() => _GetotpScreenState();
}

class _GetotpScreenState extends State<GetotpScreen> {
  bool hasPressed = false;
  late TimerController _timerController;
  TimerStyle _timerStyle = TimerStyle.ring;
  TimerProgressIndicatorDirection _progressIndicatorDirection =
      TimerProgressIndicatorDirection.clockwise;
  TimerProgressTextCountDirection _progressTextCountDirection =
      TimerProgressTextCountDirection.count_down;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            // ignore: prefer_const_constructors
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,

            // ignore: prefer_const_constructors
            decoration: BoxDecoration(
              // ignore: prefer_const_constructors
              // ignore: unnecessary_new
              // ignore: prefer_const_constructors
              image: DecorationImage(
                // ignore: prefer_const_constructors
                image: AssetImage('assets/images/otp2.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(children: [
              // ignore: sized_box_for_whitespace

              // ignore: unnecessary_new
              Positioned(
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.25,
                    ////MediaQuery.of(context).size.height * 80,

                    // ignore: prefer_const_constructors
                    decoration: BoxDecoration(
                        gradient: RadialGradient(
                          colors: [
                            Colors.pink.shade200,

                            Colors.cyan.shade200,
                            Colors.purple.shade100,
                            //Colors.white10,
                            // Colors.white,
                          ],
                          center: Alignment.topRight,
                          radius: 3,
                          // begin: Alignment.bottomLeft,
                          // end: Alignment.topRight
                        ),
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(28),
                          bottomRight: Radius.circular(28),
                        ))),
              ),
              Positioned(
                top: 90,
                left: 18,
                // child: Column(
                //   children: [
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
                          color: Colors.black12,
                          // ignore: prefer_const_constructors
                          offset: Offset(
                            0.0,
                            1.0,
                          ),
                          blurRadius: 40.0,
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  // ignore: prefer_const_constructors
                  child: Column(
                    children: [
                      Text("\nOTP",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black.withOpacity(1.0),
                              fontWeight: FontWeight.w300,
                              fontSize: 30)),
                      Text(" Verification",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black.withOpacity(1.0),
                              fontWeight: FontWeight.bold,
                              fontSize: 30)),
                    ],
                  ),
                ),
                //   ],
                // ),
              ),
              Positioned(
                top: 360,
                left: 8,
                child: Center(
                  child: OTPTextField(
                    length: 4,
                    // margin: const EdgeInsets.all(12),
                    width: MediaQuery.of(context).size.width,
                    textFieldAlignment: MainAxisAlignment.spaceEvenly,
                    fieldWidth: 48.2,
                    otpFieldStyle: OtpFieldStyle(
                        backgroundColor: Colors.blueGrey.shade50,
                        disabledBorderColor: Colors.blueGrey.shade50,
                        borderColor: Colors.transparent),
                    fieldStyle: FieldStyle.box,
                    // outlineBorderRadius: 15,
                    // ignore: prefer_const_constructors
                    style: TextStyle(fontSize: 17),
                    onChanged: (pin) {
                      // print("Changed: " + pin);
                    },
                    onCompleted: (pin) {
                      // print("Completed: " + pin);
                    },
                  ),
                ),
              ),
              Positioned(
                  top: 420,
                  left: 172,
                  child: Center(
                      child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: const Text("1:03",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  )
                      // Text("timer")

                      )),

              Positioned(
                top: 460,
                left: 109,
                // ignore: sized_box_for_whitespace
                child: Container(
                  height: 60.0,
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: GestureDetector(
                    onTap: () {
                      // 3
                      setState(() {
                        hasPressed = !hasPressed;
                      });

                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Fourth();
                          },
                        ),
                        (route) => false,
                      );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: hasPressed
                            ? Colors.blueGrey.shade100
                            : Colors.indigo.shade400,
                        border: Border.all(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: <Widget>[
                          // ignore: prefer_const_constructors
                          Center(
                            // ignore: prefer_const_constructors
                            child: Text(
                              "Continue",
                              // ignore: prefer_const_constructors
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Montserrat',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                          // ignore: prefer_const_constructors
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 530,
                left: 0.5,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return GetotpScreen();
                        },
                      ),
                      (route) => false,
                    );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    // ignore: prefer_const_constructors
                    child: Text("Resend OTP",
                        // ignore: prefer_const_constructors
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent.shade400,
                        )),
                  ),
                ),
              ),
            ])));
  }
}
