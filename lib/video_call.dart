import 'dart:async';

import 'package:dr_app/chat_page.dart';
import 'package:flutter/material.dart';

class VideoCall extends StatefulWidget {
  @override
  _VideoCallState createState() => _VideoCallState();
}

StreamController<double> controller = StreamController.broadcast();

class _VideoCallState extends State<VideoCall> {
  double? position;
  RangeValues _rangeValues = RangeValues(0, 100);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.transparent,
                  Colors.grey,
                ],
                begin: Alignment.center,
                end: Alignment.bottomCenter,
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3iGQ6pge4o0cYV-MbHI2UE-upbjjuEiUEcQ&usqp=CAU",
                ),
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: 20,
            child: IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return ChatPage();
                }));
              },
              icon: Icon(
                Icons.navigate_before,
                size: 40,
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: 260,
            child: Draggable(
              feedback: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCfa2ZylIhsM4w_BvllWi6eyjuXEU6taH_Ag&usqp=CAU",
                    ),
                  ),
                ),
                height: 500,
                width: 400,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCfa2ZylIhsM4w_BvllWi6eyjuXEU6taH_Ag&usqp=CAU",
                    ),
                  ),
                ),
                height: 180,
                width: 130,
              ),
            ),
          ),
          Positioned(
            top: 160,
            left: 248,
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: 169,
            left: 258,
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.grey[350],
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: 178,
            left: 265,
            child: Icon(Icons.expand),
          ),
          Positioned(
            top: 450,
            left: 120,
            child: Text(
              "Dr.Navida N",
              style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.deepPurple,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 500,
            left: 160,
            child: Text(
              "01:20:56",
              style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.deepPurple,
                fontSize: 20,
              ),
            ),
          ),
          Positioned(
            top: 600,
            left: 80,
            child: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.grey,
              child: Icon(
                Icons.video_call_sharp,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
          Positioned(
            top: 590,
            left: 190,
            child: CircleAvatar(
              radius: 40,
              backgroundColor: Colors.red,
              child: Icon(
                Icons.call_end,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
          Positioned(
            top: 600,
            left: 310,
            child: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.grey,
              child: Icon(
                Icons.mic,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
          Positioned(
            top: 200,
            left: 40,
            child: Container(
              child: Column(
                children: [
                  RotatedBox(
                    quarterTurns: 1,
                    child: RangeSlider(
                      labels: RangeLabels(
                        _rangeValues.start.round().toString(),
                        _rangeValues.end.round().toString(),
                      ),
                      inactiveColor: Colors.grey,
                      activeColor: Colors.indigo[900],
                      divisions: 5,
                      min: 0,
                      max: 100,
                      values: _rangeValues,
                      onChanged: (RangeValues values) {
                        setState(() {
                          _rangeValues = values;
                        });
                      },
                    ),
                  ),
                  Icon(
                    Icons.volume_up,
                    size: 30,
                    color: Colors.white,
                  ),
                ],
              ),
              height: 250,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
