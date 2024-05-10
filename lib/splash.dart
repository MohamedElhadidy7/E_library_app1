import 'package:flutter/material.dart';
import 'package:elibrary_app1/login.dart';

class Splash_screen extends StatefulWidget {
  const Splash_screen({super.key});
  @override
  State<Splash_screen> createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 80,
              ),
              Image.asset(
                'images/splash.jpg',
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 55,
                width: double.infinity,
                child: MaterialButton(
                  color: Color.fromARGB(230, 197, 124, 14),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login_screen()),
                      );
                    });
                  },
                  child: Container(
                      child: Text(
                    'Get Started',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
