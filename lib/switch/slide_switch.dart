import 'package:firebase_course/switch/page_one.dart';
import 'package:firebase_course/switch/page_two.dart';
import 'package:flutter/material.dart';

import 'package:slide_switcher/slide_switcher.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int switcherIndex1 = 0;
  int switcherIndex2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: switcherIndex1 == 0
          ? Colors.white10.withOpacity(0.27)
          : Colors.white10.withOpacity(0.2),
      body: Column(
        children: [
          SizedBox(height: 50),
          SlideSwitcher(
            children: [
              Text(
                'First',
                style: TextStyle(
                  fontWeight:
                  switcherIndex2 == 0 ? FontWeight.w500 : FontWeight.w400,
                  color: switcherIndex2 == 0 ? Colors.deepPurple : Colors.white,
                ),
              ),
              Text(
                'Second',
                style: TextStyle(
                  fontWeight:
                  switcherIndex2 == 1 ? FontWeight.w500 : FontWeight.w400,
                  color: switcherIndex2 == 1 ? Colors.deepPurple : Colors.white,
                ),
              ),
            ],
            containerColor: Colors.deepPurple,
            onSelect: (int index) => setState(() {
              switcherIndex2 = index;
            }),
            containerHeight: 40,
            containerWight: 350,
          ),
          Expanded(child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [switcherIndex2 == 1 ?
              SecondPage()
                  : FirstPage()],
            ),
          ))
        ],
      ),
    );
  }
}

