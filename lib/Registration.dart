import 'package:flutter/material.dart';
import 'package:flutter_application_1exam/LoginScreen.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: const Color.fromRGBO(240, 244, 243, 1),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: -20,
            left: -100,
            child: Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(143, 225, 251, 50),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: -100,
            left: -20,
            child: Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(143, 225, 251, 50),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 80.0,
              ),
              const Text(
                'Welcome to Onboard!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'IbarraRealNova',
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Lets help meet up your tasks.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'IbarraRealNova',
                  fontSize: 10.0,
                  fontWeight: FontWeight.w200,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
               Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),),
                    hintText: 'Enter your full name',
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
               Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),),
                    hintText: 'Enter your Email',
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
               Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),),
                    hintText: 'Enter your Password',
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
               Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),),
                    hintText: 'Confirm your Password',
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(120, 10, 120, 10),
                  backgroundColor: const Color.fromRGBO(80, 194, 201, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {
                  // Navigate to Login screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                child: const Text(
                  'Register',
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'IbarraRealNova',
                    fontSize: 15,
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Already have an account ?',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Handle Sign In
                    },
                    child: const Text("Sign in"),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}