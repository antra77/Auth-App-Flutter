import 'package:flutter/material.dart';
import 'signin_page.dart';
import 'signup_page.dart';
import 'background.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(''),
          backgroundColor: Colors.transparent,
          elevation: 0, // Remove app bar shadow
        ),
        backgroundColor: Colors.transparent, 
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Hello! Welcome to the Plantify App',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, 
      
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignInPage()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.transparent),
                ),
                child: const Text(
                  'Sign In',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignUpPage()),
                  );
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
