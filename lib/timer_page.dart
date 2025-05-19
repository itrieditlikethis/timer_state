import 'package:flutter/material.dart';

class TimerPage extends StatefulWidget {
  const TimerPage({super.key});

  @override
  State<TimerPage> createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  bool isStart = true;

  void onChange() {
    setState(() {
      isStart = !isStart;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: size.height * 0.1,
            height: size.height * 0.1,
            margin: EdgeInsets.all(10),
            child: FloatingActionButton(
              backgroundColor: Colors.greenAccent,
              onPressed: () {},
              child: Icon(
                Icons.restart_alt_rounded,
                size: size.height * 0.05,
                color: Colors.white,
              ),
            ),
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: size.height * 0.1,
                height: size.height * 0.1,
                margin: EdgeInsets.all(10),
                child: CircularProgressIndicator(
                  backgroundColor: Colors.greenAccent,
                  color: Colors.deepOrange,
                  value: 0.3,
                  strokeWidth: 10,
                ),
              ),
              Positioned(
                child: Text(
                  '5:00',
                  style: TextStyle(
                      fontSize: size.height * 0.03,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange),
                ),
              ),
            ],
          ),
          Container(
            width: size.height * 0.1,
            height: size.height * 0.1,
            margin: EdgeInsets.all(10),
            child: FloatingActionButton(
              onPressed: onChange,
              backgroundColor: Colors.greenAccent,
              child: Icon(
                isStart ? Icons.play_arrow : Icons.pause,
                size: size.height * 0.05,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
