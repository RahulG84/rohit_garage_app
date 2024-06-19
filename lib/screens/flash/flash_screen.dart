import 'dart:async';
import 'package:auto_garage_jobcard/screens/auth/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blueAccent, Colors.lightBlueAccent],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(
                'lib/assets/lottie_files/splash_logo.json',
                repeat: true,
                width: 600,
                height: 600,
              ),
              //const SizedBox(height: 20),
              const Text(
                'Rohit Auto Garage',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: AutofillHints.creditCardNumber
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
