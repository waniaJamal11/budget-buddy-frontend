import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Image.asset('assets/images/welcome.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0, left: 20),
              child: Row(children: [
                Text(
                  "Name:",
                  style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF145DA0),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 10),
                Expanded(
                    child: TextField(
                        cursorColor: Color(0xFF145DA0),
                        decoration: InputDecoration(
                          hintText: "Enter your name",
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF145DA0),
                              width: 2.5,
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF145DA0),
                              width: 3,
                            ),
                          ),
                        )))
              ]),
            ),
            SizedBox(height: 50),
            Text("Select the categories that best fit your spending habits.",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w600
                ),
                textAlign: TextAlign.justify),
              SizedBox(height: 20)  
          ],
        ),
      ),
    );
  }
}
