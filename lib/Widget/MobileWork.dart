import 'package:flutter/material.dart';
import 'package:steps/steps.dart';

class MobileWork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width - 100,
      alignment: Alignment.topCenter,
      child: Steps(
        direction: Axis.vertical,
        size: 20.0,
        path: {'color': Colors.lightBlue.shade200, 'width': 2.75},
        steps: [
          {
            'color': Color(0xff64FFDA),
            'background': Colors.indigo,
            'label': '*',
            'content': Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Sandip Institute Of Engineering & Management Nashik",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Color(0xffCCD6F6),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 6.0,
                ),
                Text(
                  "I am currently pursuing Bachelor's Degree in Computer Science and Engineering \nat Savitribai Phule Pune University",
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Color(0xffCCD6F6).withOpacity(0.5),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "2016 - Present ",
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Color(0xffCCD6F6).withOpacity(0.5),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          },
          {
            'color': Color(0xff64FFDA),
            'background': Colors.indigo,
            'label': '*',
            'content': Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Flutter + Dart Development Winter Bootcamp",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Color(0xffCCD6F6),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 6.0,
                ),
                Text(
                  "The Complete 2020 Flutter + Dart Winter Development Bootcamp at LCO Training Center,\nJaipur, Rajasthan (302017), Covering all the fundamental concepts for Flutter development",
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Color(0xffCCD6F6).withOpacity(0.5),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "Dec - 2019 to Feb - 2020 ",
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Color(0xffCCD6F6).withOpacity(0.5),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          },
          {
            'color': Color(0xff64FFDA),
            'background': Colors.indigo,
            'label': '*',
            'content': Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Freelancer - Flutter | Dart Mobile App Developer | UI - UX Designer",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Color(0xffCCD6F6),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 6.0,
                ),
                Text(
                  "Flutter Developer and experienced programmer with an extensive history of designing and coding \nsolutions. Skilled in Google’s Flutter/Dart, Firebase App and Web development on a global scale. If you \nare looking for someone that you can trust that will complete your app on time and on budget, then \nplease contact me. I have been developing software for 1+ years and take pride in everything I do.",
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Color(0xffCCD6F6).withOpacity(0.5),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "Oct 2019 - Present ",
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Color(0xffCCD6F6).withOpacity(0.5),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          },
        ],
      ),
    );
  }
}
