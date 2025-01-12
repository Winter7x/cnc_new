import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'About us',
          style: TextStyle(
            fontFamily: 'RobotoMono', // Cool system font
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(15),
              child: const Text(
                'We are an indie team of developers. Your journey is our priority. We strive to deliver solutions that simplify, connect, and elevate your daily life.',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'RobotoMono', // Stylish system font
                  fontWeight: FontWeight.w400,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(
    const MaterialApp(
      home: AboutScreen(),
    ),
  );
}
