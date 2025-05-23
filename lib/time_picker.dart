import 'package:flutter/material.dart';

class TimePicker extends StatelessWidget {
  const TimePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 200,
      decoration: BoxDecoration(color: Colors.greenAccent),
      child: Text('time'),
    );
  }
}
