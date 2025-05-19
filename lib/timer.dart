import 'package:flutter/material.dart';
import 'package:timer_state/timer_page.dart';

class TimerApp extends StatefulWidget {
  const TimerApp({super.key});

  @override
  State<TimerApp> createState() => _TimerAppState();
}

class _TimerAppState extends State<TimerApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.greenAccent.shade100,
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: Text('Timer'),
          centerTitle: true,
        ),
        body: const TimerPage(),
      ),
    );
  }
}
