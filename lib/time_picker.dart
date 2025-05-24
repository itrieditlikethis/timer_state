import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class TimePicker extends StatefulWidget {
  const TimePicker({super.key});

  @override
  State<TimePicker> createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  int _currentHourValue = 1;
  int _currentMinsValue = 1;
  int _currentSecsValue = 1;

  void onHourChange(int value) {
    setState(() {
      _currentHourValue = value;
    });
  }

  void onMinutesChange(int value) {
    setState(() {
      _currentMinsValue = value;
    });
  }

  void onSecsChange(int value) {
    setState(() {
      _currentSecsValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Picker(
              currentValue: _currentHourValue,
              onMinutesChange: onHourChange,
              title: 'Hours',
            ),
            Picker(
              currentValue: _currentMinsValue,
              onMinutesChange: onMinutesChange,
              title: 'Mins',
            ),
            Picker(
              currentValue: _currentSecsValue,
              onMinutesChange: onSecsChange,
              title: 'Secs',
            ),
          ],
        ),
      ],
    );
  }
}

class Picker extends StatelessWidget {
  final int currentValue;
  final void Function(int) onMinutesChange;
  final String title;

  const Picker({
    super.key,
    required this.currentValue,
    required this.onMinutesChange,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      spacing: 40,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.greenAccent,
            fontSize: 44,
            fontWeight: FontWeight.bold,
          ),
        ),
        NumberPicker(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.greenAccent, width: 8),
              // color: Colors.greenAccent,
              borderRadius: BorderRadius.circular(30)),
          itemHeight: size.height * 0.1,
          itemWidth: size.height * 0.1,
          zeroPad: title == 'hours' ? true : false,
          textStyle: TextStyle(
              color: Colors.orangeAccent,
              fontSize: 34,
              fontWeight: FontWeight.bold),
          selectedTextStyle: TextStyle(
              color: Colors.deepOrange,
              fontSize: 44,
              fontWeight: FontWeight.bold),
          itemCount: 3,
          minValue: 0,
          maxValue: title == 'hours' ? 24 : 60,
          value: currentValue,
          onChanged: (value) => onMinutesChange(value),
        ),
      ],
    );
  }
}
