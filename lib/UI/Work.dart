import 'package:flutter/material.dart';
import 'package:potrtfolio/Widget/CustomText.dart';
import 'package:steps/steps.dart';

class Work extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: MediaQuery.of(context).size.height * 1.45,   
      width: MediaQuery.of(context).size.width - 100,
      //color: Colors.tealAccent,
      child:  Column( 
          verticalDirection: VerticalDirection.down,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomText(
                  text: "02.",
                  textsize: 20.0,
                  color: Color(0xff61F9D5),
                  fontWeight: FontWeight.w700,
                ),
                SizedBox(
                  width: 12.0,
                ),
                CustomText(
                  text: "Where I've Worked",
                  textsize: 26.0,
                  color: Color(0xffCCD6F6),
                  fontWeight: FontWeight.w700,
                ),
                SizedBox(
                  width: 26.0,
                ),
                Container(
                  width: size.width / 4,
                  height: 0.75,
                  color: Color(0xff303C55),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.07,
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width - 100,
              alignment: Alignment.topCenter,
              child: Steps(
                direction: Axis.vertical,
                size: 20.0,
                path: {'color': Colors.lightBlue.shade200, 'width': 2.75},
                steps: [
                  {
                    'color': Color(0xff64FFDA),
                    'background': Colors.indigo,
                    'label': '❒',
                    'content': Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Sandip Institute Of Engineering & Management Nashik",
                          style: TextStyle(
                            fontSize: 22.0,
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
                    'label': '❒',
                    'content': Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Flutter + Dart Development Winter Bootcamp",
                          style: TextStyle(
                            fontSize: 22.0,
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
                    'label': '❒',
                    'content': Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Freelancer - Flutter | Dart Mobile App Developer | UI - UX Designer",
                          style: TextStyle(
                            fontSize: 22.0,
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

                  //Haking code
                  {
                    'color': Color(0xff64FFDA),
                    'background': Colors.indigo,
                    'label': '❒',
                    'content': Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Mentor at Contributor's Hack, 2020",
                          style: TextStyle(
                            fontSize: 22.0,
                            color: Color(0xffCCD6F6),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          "Working as a mentor in HakinCode organization for Flutter CodeAsylums application \n where I can utilize my skills and be an asset to the organization",
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Color(0xffCCD6F6).withOpacity(0.5),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "Sep 2020 - Oct 2020 ",
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
            )
          ],
        
      ),
    );
  }
}
 