import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_manager/constants.dart';
import 'package:task_manager/screens/components/circleAvatar.dart';
import 'package:task_manager/screens/taskCalendar.dart';

import 'components/cards.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, //i like transaparent :-)
        systemNavigationBarColor: primaryColor, // navigation bar color
        statusBarIconBrightness: Brightness
            .light, // status bar icons' color //navigation bar icons' color
        statusBarBrightness: Brightness.light,
        systemNavigationBarIconBrightness: Brightness.light,
        systemNavigationBarDividerColor: primaryColor,
      ),
      child: Scaffold(
        backgroundColor: primaryColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              width: width,
              height: height,
              margin: EdgeInsets.only(left: 5, right: 5),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Icon(
                          EvaIcons.menu2,
                          color: primaryTextColor,
                        ),
                      ),
                      CircleProfile(
                        margin: 10,
                        imageUrl: "profile1",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Hi Swaroop",
                        style: TextStyle(
                            color: primaryTextColor,
                            fontSize: 25,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "5 Tasks are pending",
                        style: TextStyle(
                          color: primaryTextColor.withOpacity(0.5),
                          fontSize: 12,
                          fontFamily: "Poppins",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: width,
                    margin: EdgeInsets.only(left: 20, right: 20),
                    padding: EdgeInsets.all(20),
                    decoration: mydecoration,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Flutter App Development",
                          style: TextStyle(
                              color: primaryTextColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Poppins"),
                        ),
                        Text(
                          "Mike and Stephen",
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
                                  "Now",
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
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    padding: const EdgeInsets.only(left: 8.0, right: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Monthly Review",
                          style: TextStyle(
                            color: primaryTextColor,
                            fontSize: 16,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (contex) => TaskCalendar(),
                              ),
                            );
                          },
                          child: Icon(
                            Icons.calendar_today_outlined,
                            color: Colors.white,
                            size: 16,
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xff44D5FB),
                              shape: CircleBorder()),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Cards(
                          number: 20,
                          height: height * 0.18,
                          text: "Done",
                        ),
                        Cards(
                          number: 8,
                          height: height * 0.12,
                          text: "In Progress",
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Cards(
                          number: 12,
                          height: height * 0.12,
                          text: "Pending",
                        ),
                        Cards(
                          number: 25,
                          height: height * 0.18,
                          text: "Waiting for Review",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
