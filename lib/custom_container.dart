import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String? text;

  CustomContainer({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text!,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          border: Border.all(
            color: Colors.grey[300]!,
            width: 1,
          )),
    );
  }
}
