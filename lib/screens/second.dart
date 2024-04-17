import 'package:flutter/material.dart';
import 'package:untitledddd/main.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Second Screen',
        ),
      ),
      body: Center(
        child: Container(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/aa.jpeg',
              width: 300,
              height: 300,
            ),
            Text(
              'aa',
              style: TextStyle(
                fontFamily: 'Regular',
                fontSize: 50
              ),
            ),
          ],
          ),
    ),
      ),
    );
  }
}
