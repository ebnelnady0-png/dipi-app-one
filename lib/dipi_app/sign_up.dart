import 'package:flutter/material.dart';

import 'Custom_App_Field.dart';
import 'Custom_App_button.dart';


class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
          color: Color(0xffFF5E00),
        ),
        title: Text(
          "Sign Up",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight(400),
            color: Color(0xffFF5E00),
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: .stretch,
            children: [
              Image.asset("assets/images/Sign up.jpeg", height: 310),
              SizedBox(height: 10),
              Text(
                "Please enter your information to \ncreate an account.",
                textAlign: .start,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight(400),
                  color: Color(0xff6D3805),
                ),
              ),
              SizedBox(height: 30),
              CustomAppField(hint: "Email"),
              SizedBox(height: 20),
              CustomAppField(
                hint: "password",
                suffix: Icon(
                  Icons.visibility_outlined,
                  color: Color(0xffFF5E00),
                ),
              ),
              SizedBox(height: 20),
              CustomAppField(
                hint: "Confirm Password",
                suffix: Icon(
                  Icons.visibility_outlined,
                  color: Color(0xffFF5E00),
                ),
              ),
              SizedBox(height: 40),
              CustomAppButton(text: "Sign up"),
            ],
          ),
        ),
      ),
    );
  }
}