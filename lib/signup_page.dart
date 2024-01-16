// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'background.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Sign Up'),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  filled: true,
                  fillColor: const Color.fromARGB(80, 0, 0, 0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  filled: true,
                  fillColor: const Color.fromARGB(80, 0, 0, 0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Retype Password',
                  filled: true,
                  fillColor: const Color.fromARGB(80, 0, 0, 0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Handle sign-up button press
                  print('Sign Up button pressed');
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.transparent),
                ),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
