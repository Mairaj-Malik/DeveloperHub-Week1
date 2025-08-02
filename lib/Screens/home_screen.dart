import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.home, color: Color(0xffFF7F50), size: 300),
            Text(
              'Welcome to Home Screen',
              style: TextStyle(color: Color(0xff36454F), fontSize: 30,fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
