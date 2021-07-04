// import 'dart:js';

import 'package:flutter/material.dart';

Widget containerforappbar() {
  return Container(
      child: Container(
          child: const Text("Hello"),
          width: 60,
          // MediaQuery.of(context).size.width,
          height: 80,
          ////MediaQuery.of(context).size.height * 80,
          // ignore: prefer_const_constructors
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(60),
                bottomRight: Radius.circular(60),
              ))),
      // padding: const EdgeInsets.all(45),
      alignment: Alignment.topCenter,
      width: 60,
      // MediaQuery.of(context).size.width * 0.3,
      height: 100,
      // MediaQuery.of(context).size.height * 0.45,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50),
            bottomRight: Radius.circular(50),
          )));
}

TextFormField textFormFieldKeyBoardTypedecoration() {
  return TextFormField(
    keyboardType: TextInputType.text,
    style: const TextStyle(
      color: Colors.white,
    ),
  );
}

InputDecoration textFieldInputDecoration(String hintText) {
  return InputDecoration(
    fillColor: Colors.white,
    focusColor: Colors.white,
    hintText: hintText,
    hintStyle: const TextStyle(
      color: Colors.white,
    ),
    focusedBorder: const UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
    ),
    enabledBorder:
        const UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
  );
}

TextStyle simpleTextFieldStyle() {
  return const TextStyle(
    color: Colors.white,
    fontSize: 16,
  );
}

TextStyle mediumTextFieldStyle() {
  return const TextStyle(
    color: Colors.white,
    fontSize: 18,
  );
}

ColoredBox color1() {
  return const ColoredBox(
    color: Colors.blueAccent,
  );
}

DecoratedBox box() {
  return const DecoratedBox(
    decoration: BoxDecoration(
      gradient: RadialGradient(
        colors: [
          Color(0xFFFFFFFF),
        ],
        center: Alignment.topRight,
        radius: 3,
      ),
    ),
  );
}

GestureDetector button(String textonbutton) {
  bool hasPressed = false;
  return GestureDetector(
    onTap: () {
      // Navigator.pushAndRemoveUntil(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) {
      //       return GetotpScreen();
      //     },
      //   ),
      //   (route) => false,
      // );
    },
    child: Container(
      alignment: Alignment.center,
      width: 100,
      // MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      // ignore: prefer_const_constructors
      child: Text(textonbutton,
          // ignore: prefer_const_constructors
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600,
            color: Colors.blueAccent.shade400,
          )),
    ),
  );
}

Container button2(String _textonbutton) {
  // ignore: sized_box_for_whitespace
  return Container(
    height: 60.0,
    width: 100,
    // MediaQuery.of(context).size.width * 0.4,
    child: GestureDetector(
      onTap: () {
        // Navigator.pushAndRemoveUntil(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) {
        //       return LoginScreen();
        //     },
        //   ),
        //   (route) => false,
        // );
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.indigo.shade400,
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
                _textonbutton,
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
  );
}
