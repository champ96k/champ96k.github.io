import 'package:flutter/material.dart';
import 'package:potrtfolio/Widget/CustomText.dart';

class About extends StatelessWidget {
  Widget technology(BuildContext context, String text) {
    return Row(
      children: [
        Icon(
          Icons.skip_next,
          color: Color(0xff64FFDA).withOpacity(0.6),
          size: 14.0,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.01,
        ),
        Text(
          text,
          style: TextStyle(
            color: Color(0xff717C99),
            letterSpacing: 1.75,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width - 100,
      child: Row(
        children: [
          //About me
          Container(
            height: size.height*0.9,
            width: size.width / 2 - 100,
           //color: Colors.purple,
            child: Column(
              children: [
                //About me title
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomText(
                      text: "01.",
                      textsize: 20.0,
                      color: Color(0xff61F9D5),
                      fontWeight: FontWeight.w700,
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    CustomText(
                      text: "About Me",
                      textsize: 26.0,
                      color: Color(0xffCCD6F6),
                      fontWeight: FontWeight.w700,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.01,
                    ),
                    Container(
                      width: size.width / 4,
                      height: 1.10,
                      color: Color(0xff303C55),
                    ),
                  ],
                ),

                SizedBox(
                  height: size.height * 0.07,
                ),

                //About me desc
                Wrap(
                  children: [
                    CustomText(
                      text:
                          "Hello! I'm Tushar, a Freelancer based in Nashik, IN.\n\nI enjoy creating things that live on the internet, whether that be websites, applications, or anything in between. My goal is to always build products that provide pixel-perfect, performant experiences.\n\n",
                      textsize: 16.0,
                      color: Color(0xff828DAA),
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.75,
                    ),
                    CustomText(
                      text:
                          "Shortly currently, I am purshuing my Bachlor's degree in Computter science and Engineering at University of Pune, as well as doing freelancing where I work on a wide variety of interesting and meaningful projects on a daily basis.\n\n",
                      textsize: 16.0,
                      color: Color(0xff828DAA),
                       fontWeight: FontWeight.w500,
                       letterSpacing: 0.75,
                    ),
                    CustomText(
                      text:
                          "Here are a few technologies I've been working with recently:\n\n",
                      textsize: 16.0,
                      color: Color(0xff828DAA),
                       fontWeight: FontWeight.w500,
                       letterSpacing: 0.75,
                    ),
                  ],
                ),

                Container(
                  height: size.height*0.11,
                  width: size.width,
               //   color: Colors.redAccent,
                  child: Row(
                    children: [
                      Container(
                        width: size.width * 0.20,
                         height: size.height*0.11,
                        child: Column(
                          children: [
                            technology(context, "Dart"),
                            technology(context, "Flutter"),
                            technology(context, "Firebase"),
                            technology(context, "UI/UX (Adobe Xd)"),
                          ],
                        ),
                      ),
                      Container(
                        width: size.width * 0.15,
                         height: size.height*0.11,
                        child: Column(
                          children: [
                            technology(context, "C/C++, Java."),
                            technology(context, "HTML & (S)CSS"),
                            technology(context, "MYSQL"),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),

          //Profile Image
          Expanded(
            child: Container(
              height: size.height / 1.5,
              width: size.width / 2 - 100,
              // color: Colors.white,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: size.height * 0.12,
                    left: size.width * 0.120,
                    child: Card(
                      color: Color(0xff61F9D5),
                      child: Container(
                        margin: EdgeInsets.all(2.75),
                        height: size.height / 2,
                        width: size.width / 5,
                        color: Color(0xff0A192F),
                      ),
                    ),
                  ),
                  Container(
                    height: size.height / 2,
                    width: size.width / 5,
                    color: Colors.black54,
                    child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage("images/pic1.jpeg"),
                    ),
                  ),
                  Container(
                    height: size.height / 2,
                    width: size.width / 5,
                    color: Color(0xff61F9D5).withOpacity(0.5),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
