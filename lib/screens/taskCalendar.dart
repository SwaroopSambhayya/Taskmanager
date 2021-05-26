import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_manager/constants.dart';
import 'package:task_manager/screens/components/circleAvatar.dart';
import 'package:task_manager/screens/components/scheduleBox.dart';

import 'components/calendarpill.dart';

class TaskCalendar extends StatelessWidget {
  final List weeks = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"];

  @override
  Widget build(BuildContext context) {
    int weekCount = -1;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, //i like transaparent :-)
        systemNavigationBarColor: Colors.white, // navigation bar color
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarDividerColor:
            Colors.white, // status bar icons' color
        systemNavigationBarIconBrightness:
            Brightness.dark, //navigation bar icons' color
      ),
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        border:
                            Border.all(color: secondaryTextColor, width: 0.5),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: IconButton(
                        icon: Icon(
                          EvaIcons.arrowBack,
                          color: secondaryTextColor,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    CircleProfile()
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back,
                        color: secondaryTextColor,
                        size: 20,
                      ),
                      label: Text(
                        "March",
                        style: TextStyle(
                            color: secondaryTextColor,
                            fontSize: 12,
                            fontFamily: "Poppins"),
                      ),
                    ),
                    Text(
                      "April",
                      style: TextStyle(
                          color: secondaryTextColor,
                          fontSize: 16,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600),
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      icon: Text(
                        "May",
                        style: TextStyle(
                            color: secondaryTextColor,
                            fontSize: 12,
                            fontFamily: "Poppins"),
                      ),
                      label: Icon(
                        Icons.arrow_forward,
                        color: secondaryTextColor,
                        size: 20,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                    itemCount: 30,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      weekCount++;
                      if (weekCount == 7) {
                        weekCount = 0;
                      }

                      return CalendarPill(
                        date: index + 1,
                        week: weeks[weekCount],
                        selected: index == 0 ? true : false,
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Ongoing",
                      style: TextStyle(
                          color: secondaryTextColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Poppins"),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "10 AM",
                            style: TextStyle(
                                color: secondaryTextColor.withOpacity(0.6),
                                fontSize: 10,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "11 AM",
                            style: TextStyle(
                                color: secondaryTextColor.withOpacity(0.6),
                                fontSize: 10,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Flexible(
                        child: ScheduleBox(
                          title: "Flutter App Development",
                          byWhom: "Mike and Cathie",
                          when: "Now",
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "10 AM",
                        style: TextStyle(
                            color: secondaryTextColor.withOpacity(0.6),
                            fontSize: 10,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 15,
                      height: 15,
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: secondaryTextColor.withOpacity(0.3),
                              blurRadius: 10,
                              offset: Offset(0, 2),
                            )
                          ]),
                      child: Container(
                        width: 5,
                        height: 5,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.red),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: Container(
                        height: 1,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "11 AM",
                            style: TextStyle(
                                color: secondaryTextColor.withOpacity(0.6),
                                fontSize: 10,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "12 PM",
                            style: TextStyle(
                                color: secondaryTextColor.withOpacity(0.6),
                                fontSize: 10,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Flexible(
                        child: ScheduleBox(
                          title: "Animation with Flutter",
                          byWhom: "Simon and Cindy",
                          when: "10 AM - 12 PM",
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "1 PM",
                            style: TextStyle(
                                color: secondaryTextColor.withOpacity(0.6),
                                fontSize: 10,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "3 PM",
                            style: TextStyle(
                                color: secondaryTextColor.withOpacity(0.6),
                                fontSize: 10,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Flexible(
                        child: ScheduleBox(
                          title: "Dart Null Safety",
                          byWhom: "Simon and Cindy",
                          when: "1 pM - 2.30 PM",
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
