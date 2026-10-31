import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AnimatedContainerScreen(),
    );
  }
}

class AnimatedContainerScreen extends StatefulWidget {
  const AnimatedContainerScreen({super.key});

  @override
  State<AnimatedContainerScreen> createState() =>
      _AnimatedContainerScreenState();
}

class _AnimatedContainerScreenState extends State<AnimatedContainerScreen> {
  bool isChanged = false;

  void changeContainer() {
    setState(() {
      isChanged = !isChanged;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(seconds: 1),
              width: isChanged ? 150 : 120,
              height: isChanged ? 150 : 120,
              color: isChanged ? Colors.orange : Colors.amber,
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: changeContainer,
              child: const Text('Animated Container'),
            ),
          ],
        ),
      ),
    );
  }
}