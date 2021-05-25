import 'package:flutter/material.dart';

class CircleProfile extends StatelessWidget {
  final double margin;
  final String imageUrl;
  CircleProfile({this.margin = 15, this.imageUrl = ""});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(margin),
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(25)),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.15),
              offset: Offset(2, 8),
              blurRadius: 30)
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: imageUrl.isNotEmpty
              ? Image.asset(
                  'lib/assets/' + imageUrl + '.jpg',
                  width: 30,
                  height: 30,
                  fit: BoxFit.cover,
                )
              : SizedBox(),
        ),
      ),
    );
  }
}
