import 'package:flutter/material.dart';
import 'package:untitledddd/main.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Third Screen'
        ),
      ),
      body: Stack(
        children: [
          Center(
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                    Radius.circular(100)
                ),
                color: Colors.green,
              ),
            ),
          ),
          Center(
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                    Radius.circular(100)
                ),
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
