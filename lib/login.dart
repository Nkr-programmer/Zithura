
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:zithara/zit/getotp.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// ignore: use_key_in_widget_constructors
class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController mobileno = TextEditingController();
  late PageController _controller;
  int _currentIndex = 0;
  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  String isValidPhoneNumber(String string) {
    // Null or empty string is invalid phone number
    if (string == "" || string.isEmpty) {
      return "null";
    }

    // You may need to change this pattern to fit your requirement.
    // I just copied the pattern from here: https://regexr.com/3c53v
    const pattern = r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$';
    final regExp = RegExp(pattern);

    if (!regExp.hasMatch(string)) {
      return "null";
    }
    return "loggedin";
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  bool noentered = false;

  final List<String> _titlesList = [
    "\n " "SHOP AND EARN",
    'EARN MORE',
    'THE REDEEMER HAS RISEN',
    'POOL YOUR ZI AND SHOP!',
    'LOVE PLAYING GAMES?',
  ];

  final List<String> _subtitlesList = [
    '\n Use Your Zithara App with everyday \n shopping,pay using UPI through the Zithara',
    'Use Zithara Redeem Zi Coins as Cash',
    'Simply bring in your ariline,credit card points.',
    'NEVER RUN OUT OF CASH eg by funding next ludo game',
    'Get Started'
  ];

  final List<String> _imageList = [
    'assets/images/loginlogo.png',
    'assets/images/loginimg.png',
    'assets/images/1stlogin.png',
    'assets/images/loginlogo.png',
    'assets/images/playloginscreen.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                controller: _controller,
                itemCount: _titlesList.length,
                onPageChanged: (int index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                itemBuilder: (_, i) {
                  return Stack(
                    // margin: const EdgeInsets.only(top: 2),
                    alignment: Alignment.bottomCenter,

                    children: [
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Text(
                          _titlesList[i],
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      Center(
                          //  padding: const EdgeInsets.all(12),
                          child:
                              Image.asset(_imageList[i], fit: BoxFit.contain)),

                      // ignore: avoid_unnecessary_containers
                      //   const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: Text(
                          _subtitlesList[i],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  );
                }),
          ),
          // ignore: avoid_unnecessary_containers

          Container(
            margin: const EdgeInsets.only(top: 24, bottom: 12),

            // margin: const EdgeInsets.only(bottom: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                _titlesList.length,
                (index) => buildDot(index, context),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 52.0),
            child: Image.asset(
              "assets/images/login_logo.png",
              alignment: Alignment.center,
              fit: BoxFit.contain,
            ),
          ),
          // ignore: avoid_unnecessary_containers
          const Padding(
            padding: EdgeInsets.all(18.0),
            child: Text("Zithara",
                style: TextStyle(
                    fontSize: 26,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
          ),
          // ],

          Padding(
            padding: const EdgeInsets.only(left: 62.5, right: 62.5),
            child: TextFormField(
              scrollPadding: const EdgeInsets.all(2),
              keyboardType: TextInputType.number,
              showCursor: true,
              validator: (val) {
                // isValidPhoneNumber(mobileno.text);
                if (mobileno.text.length < 10) {
                  return "Please Provide Mobile Number.";
                } else {
                  return "false";
                }
              },
              controller: mobileno,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), helperText: "+91"),
            ),
          ),
          // ignore: avoid_unnecessary_containers
          const Text("Enter Your Mobile number",
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                  fontWeight: FontWeight.w300)),
          // ignore: sized_box_for_whitespace
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                width: MediaQuery.of(context).size.width * 0.7,
                //  margin: const EdgeInsets.only(top: 6),
                child: ElevatedButton.icon(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    // shape:MaterialStateProperty.all<OutlinedBorder>(colors.white),
                  ),
                  icon: const Icon(
                    Icons.facebook_rounded,
                    color: Colors.indigo,
                    size: 32.0,
                  ),
                  label: const Text('\t\t\t\t\t\t       Login with FaceBook',
                      style: TextStyle(
                          color: Colors.indigoAccent,
                          fontWeight: FontWeight.bold)),
                  onPressed: () {
                    //print('Pressed');
                  },
                )),
          ),
          // ignore: sized_box_for_whitespace
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              child: ElevatedButton.icon(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ),
                icon: const Icon(
                  Icons.mail,
                  color: Colors.indigo,
                  size: 32.0,
                ),
                label: const Text('\t\t\t\t\t\t       Login with Gmail',
                    style: TextStyle(
                        color: Colors.indigoAccent,
                        fontWeight: FontWeight.bold)),
                onPressed: () {
                  //print('Pressed');
                  isValidPhoneNumber(mobileno.text);
                },
              ),
            ),
          ),
          GestureDetector(
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

              // ignore: prefer_const_constructors
              child: Text("Got an account? Sign In",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  )),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              // margin: const EdgeInsets.only(top: 30, bottom: 22),
              width: double.infinity,
              child: GestureDetector(
                child: Text(_currentIndex == _titlesList.length - 1 ? "" : ""),
                onTap: () {
                  if (_currentIndex == _titlesList.length - 1) {
                    // Navigator.pushReplacement(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (_) => SignUpScreen(),
                    //   ),
                    // );
                  }
                  _controller.nextPage(
                    duration: const Duration(milliseconds: 100),
                    curve: Curves.bounceIn,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: _currentIndex == index ? 25 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black,
      ),
    );
  }
}
