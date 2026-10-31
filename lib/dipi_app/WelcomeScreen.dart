import 'package:dipi_app/dipi_app/sign_in.dart';
import 'package:dipi_app/dipi_app/sign_up.dart';
import 'package:flutter/material.dart';

import 'Custom_App_button.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(height: 25),
              Image.asset("assets/images/welcome.jpeg"),
              SizedBox(height: 70),
              Text(
                "Welcome to our app",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight(400),
                  color: Color(0xff7F4E1D),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Shop online and get groceries",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight(400),
                  color: Color(0xff7F4E1D),
                ),
              ),
              Text(
                "delivered from stores to your home_screen",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight(400),
                  color: Color(0xff7F4E1D),
                ),
              ),
              Text(
                "in as fast as 1 hour .",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight(400),
                  color: Color(0xff7F4E1D),
                ),
              ),
              SizedBox(height: 50),
              CustomAppButton(
                text: "Sign up",
                action: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpScreen()),
                  );
                },
              ),
              SizedBox(height: 20),
              OutlinedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (builder) => SignInScreen()),
                  );
                },
                style: ButtonStyle(
                  fixedSize: WidgetStatePropertyAll(Size(340, 50)),
                  side: WidgetStatePropertyAll(
                    BorderSide(color: Color(0xffFF5E00)),
                  ),
                ),
                child: Text(
                  "Sign in",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight(500),
                    color: Color(0xffFF5E00),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}