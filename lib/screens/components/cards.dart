import 'package:flutter/material.dart';
import 'package:task_manager/constants.dart';

class Cards extends StatelessWidget {
  final number;
  final text;

  final double height;
  Cards({this.number, this.text, this.height});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: mydecoration,
        height: height,
        margin: EdgeInsets.only(left: 10, right: 10),
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              this.number.toString(),
              style: TextStyle(
                  color: primaryTextColor,
                  fontSize: 30,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold),
            ),
            Text(
              this.text,
              style: TextStyle(
                  color: primaryTextColor.withOpacity(0.6),
                  fontSize: 12,
                  fontFamily: "Poppins"),
            ),
          ],
        ),
      ),
    );
  }
}
