import 'package:flutter/material.dart';
import 'package:untitledddd/screens/first.dart';
import 'package:untitledddd/screens/second.dart';
import 'package:untitledddd/screens/third.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home : MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{
  late TabController _TabController;

  @override
  void initState() {
    super.initState();
    _TabController = TabController(length: 3, vsync: this);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TabBar(
        controller: _TabController,
        tabs: [
          Tab(
            text: 'Tab1',
          ),
          Tab(
            text: 'Tab2'
          ),
          Tab(
           text: 'Tab3'
          ),
        ],
      ),
      body: TabBarView(
        controller: _TabController,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                    MaterialPageRoute(builder: (context) => FirstScreen ()),
              );
             },
            child: Text(
               'Use Stack'
              ),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondScreen ()),
                );
              },
              child: Text(
                  'Use Image'
              ),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ThirdScreen ()),
                );
              },
              child: Text(
                  'Use Font'
              ),
            ),
          ),
        ],
      )
    );
  }
}
