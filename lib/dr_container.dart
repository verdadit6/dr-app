import 'package:flutter/material.dart';

class DrContainer extends StatelessWidget {
  final String? msg;
  final String? time;
  final double? height;

  DrContainer({
    this.msg,
    this.time,
    this.height,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: 250,
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(20),
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
                  color: Colors.grey[600],
                  fontSize: 20,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(width: 20),
              Text(
                time!,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 15,
                ),
              ),
              SizedBox(width: 10),
            ],
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
