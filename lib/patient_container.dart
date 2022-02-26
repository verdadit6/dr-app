import 'package:flutter/material.dart';

class PatientContainer extends StatelessWidget {
  final String? msg;
  final String? time;
  final double? height;
  final double? width;

  const PatientContainer({
    this.msg,
    this.time,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Colors.indigo[900],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 10),
          Row(
            children: [
              SizedBox(width: 20),
              Text(
                msg!,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                time!,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              SizedBox(width: 20),
            ],
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
