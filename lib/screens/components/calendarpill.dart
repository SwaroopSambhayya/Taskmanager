import 'package:flutter/material.dart';
import 'package:task_manager/constants.dart';

class CalendarPill extends StatelessWidget {
  final int date;
  final String week;
  final bool selected;
  CalendarPill({this.date, this.week, this.selected});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      width: 60,
      decoration: BoxDecoration(
          color: selected ? primaryColor : Colors.white,
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 3),
                blurRadius: 10,
                color: primaryColor.withOpacity(0.13)),
          ],
          borderRadius: BorderRadius.circular(26)),
      child: InkWell(
        onTap: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              date.toString(),
              style: TextStyle(
                  color: selected ? Colors.white : primaryColor,
                  fontFamily: "Poppins",
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              week,
              style: TextStyle(
                color: selected ? Colors.white : primaryColor,
                fontFamily: "Poppins",
                fontSize: 12,
              ),
            )
          ],
        ),
      ),
    );
  }
}
