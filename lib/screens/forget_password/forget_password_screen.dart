import 'package:auto_garage_jobcard/screens/auth/login/login_screen.dart';
import 'package:auto_garage_jobcard/screens/forget_password/password_reset_confirmation_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left :45),
                  child: Lottie.asset(
                    'lib/assets/lottie_files/reset_password.json',
                    width: 300,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Reset Your Password',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 40),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.email, color: Colors.white),
                    hintText: 'Enter your email / mobile number',
                    hintStyle: const TextStyle(color: Colors.white70),
                    filled: true,
                    fillColor: Colors.white24,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.symmetric(vertical: 20),
                  ),
                  style: const TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 40),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const PasswordResetConfirmationScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      'RESET PASSWORD',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    'Back to Login',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
