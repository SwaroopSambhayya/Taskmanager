import 'package:flutter/material.dart';

import '../../constants.dart';
import 'circleAvatar.dart';

class ScheduleBox extends StatelessWidget {
  final String title;
  final String byWhom;
  final String when;

  ScheduleBox({this.title, this.byWhom, this.when});
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      padding: EdgeInsets.all(20),
      decoration: mydecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
                color: primaryTextColor,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontFamily: "Poppins"),
          ),
          Text(
            byWhom,
            style: TextStyle(
                color: primaryTextColor.withOpacity(0.6),
                fontSize: 12,
                fontFamily: "Poppins"),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: width,
            child: Stack(
              children: [
                CircleProfile(
                  margin: 0,
                  imageUrl: "profile1",
                ),
                Positioned(
                  left: 30,
                  child: CircleProfile(
                    margin: 0,
                    imageUrl: "profile2",
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 10,
                  bottom: 0,
                  child: Text(
                    when,
                    style: TextStyle(
                        color: primaryTextColor.withOpacity(0.6),
                        fontFamily: "Poppins",
                        fontSize: 11),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
