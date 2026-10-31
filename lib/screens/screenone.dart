import 'package:flutter/material.dart';
class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen One')),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(),
                ), // InputDecoration
                validator: (value) {
                  if(value ==null || value.isEmpty){
                    return "Please Enter Your Email";
                  }
                  return null;
                },
              ), // TextFormField
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {

                  formKey.currentState!.validate();
                },
                child: Text('Validate'),
              ), // ElevatedButton
            ],
          ), // Column
        ), // Padding
      ), // Form
    ); // Scaffold
  }
}