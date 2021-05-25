import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_manager/screens/home.dart';

class Introduction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, //i like transaparent :-)
        systemNavigationBarColor: Colors.white, // navigation bar color
        statusBarIconBrightness: Brightness.dark, // status bar icons' color
        systemNavigationBarIconBrightness:
            Brightness.dark, //navigation bar icons' color
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      "lib/assets/Intersect3.png",
                      width: width > 700 ? width * 0.3 : width * 0.7,
                      height: width > 700 ? height * 0.6 : null,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 60),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 45.0),
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Text(
                          "Manage your \ndaily tasks",
                          style: TextStyle(
                              color: Color(0xff110C66),
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Poppins"),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 45.0),
                      child: Text(
                        "Team and Project management with solution providing app",
                        style: TextStyle(
                            color: Color(0xff110C66),
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Poppins"),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Home(),
                            ),
                          );
                        },
                        child: Stack(
                          children: [
                            Container(
                              width: width,
                              alignment: Alignment.topLeft,
                              child: Ink(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xff110C66).withOpacity(0.1),
                                      blurRadius: 30,
                                      offset: Offset(1, 3),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 20,
                              top: 12,
                              child: Text(
                                "Get Started",
                                style: TextStyle(
                                    color: Color(0xff110C66),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Poppins"),
                              ),
                            ),
                          ],
                        ),
                      ),
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
