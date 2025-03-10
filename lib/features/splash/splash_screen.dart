import 'dart:math';
import 'package:budget_buddy/features/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        //logo
        Center(
          child: Image.asset('assets/images/logo.png'),
        ),
        //button
        Positioned(
          bottom: 130,
          left: 0,
          right: 0,
          child: Center(
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(350, 60),
                  textStyle: TextStyle(fontSize: 22),
                  foregroundColor: Colors.white,
                  backgroundColor: Color(0xFF145DA0),
                  elevation: 8, 
                ),
                onPressed: () => Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => WelcomeScreen())),
                child: Text("Get Started")),
          ),
        ),
      ],
    ));
  }
}
