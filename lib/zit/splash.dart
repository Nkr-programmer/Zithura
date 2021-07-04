// import 'package:eg/screen/login/getotp.dart';

import 'package:flutter/material.dart';
import 'package:zithara/login.dart';
import 'package:zithara/zit/getotp.dart';

// ignore: use_key_in_widget_constructors
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    var d = const Duration(seconds: 3);
    // delayed 3 seconds to next page
    Future.delayed(d, () {
      // to next page and close this page
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) {
            // ignore: prefer_const_constructors
            return LoginScreen();
          },
        ),
        (route) => false,
      );
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/bgss.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        margin: const EdgeInsets.all(133),

        decoration: const BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.bottomCenter,
            image: AssetImage('assets/images/splashscreen_logo.png'),
          ),
        ),
        // child: Center(
        //   child: SvgPicture.asset('assets/images/splashscreen_logo.png'),
        // ),
      ),
    ));
  }
}
