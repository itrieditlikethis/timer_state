import 'package:flutter/material.dart';
import 'package:timer_state/time_picker.dart';
import 'package:timer_state/timer_widget.dart';

class TimerApp extends StatelessWidget {
  const TimerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.greenAccent.shade100,
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: Text(
            'Timer',
            style: TextStyle(
              fontSize: 38,
              fontWeight: FontWeight.bold,
              color: Colors.white70,
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const TimePicker(),
            const Timer(),
          ],
        ),
      ),
    );
  }
}
