// ignore_for_file: file_names, prefer_const_constructors

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lijo_udemy_clone/Screens/landingPage.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context,
            PageTransition(
              child: LandingPage(),
              type: PageTransitionType.rightToLeftWithFade,
            )));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 300.0,
                child: Image.asset("images/dh.png"),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 100.0),
                child: CircularProgressIndicator(
                  backgroundColor: Colors.white,
                ),
              )
            ]),
      ),
    );
  }
}
