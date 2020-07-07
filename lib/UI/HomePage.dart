import 'package:flutter/material.dart';
import 'package:potrtfolio/UI/About.dart';
import 'package:potrtfolio/Widget/AppBarTitle.dart';
import 'package:potrtfolio/Widget/CustomText.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff0A192F),
        body: Container(
          child: Column(
            children: [
              //Mavigation Bar
              Container(
                height: 82,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.change_history,
                            size: 32.0,
                            color: Color(0xff64FFDA),
                          ),
                          onPressed: () {}),
                      Spacer(),
                      Expanded(
                        child: Row(
                          children: [
                            AppBarTitle(
                              text: "About",
                              ontab: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => About()));
                              },
                            ),
                            AppBarTitle(
                              text: "Experience",
                              ontab: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => About()));
                              },
                            ),
                            AppBarTitle(
                              text: "Work",
                              ontab: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => About()));
                              },
                            ),
                            AppBarTitle(
                              text: "Contact",
                              ontab: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => About()));
                              },
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 16.0),
                              child: Card(
                                elevation: 4.0,
                                color: Color(0xff64FFDA),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6.0),
                                ),
                                child: Container(
                                  margin: EdgeInsets.all(0.85),
                                  height: 100,
                                  width: 100,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Color(0xff0A192F),
                                    borderRadius: BorderRadius.circular(6.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0,
                                    ),
                                    child: Text(
                                      "Resume",
                                      style: TextStyle(
                                        color: Color(0xff64FFDA),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),

              Row(
                children: [
                  //Social Icon
                  Container(
                    width: MediaQuery.of(context).size.width * 0.09,
                    height: MediaQuery.of(context).size.height - 82,
                    // color: Colors.pinkAccent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            icon: Icon(Icons.person),
                            color: Color(0xffffA8B2D1),
                            iconSize: 16.0,
                            onPressed: () {}
                          ),
                        IconButton(
                            icon: Icon(Icons.group),
                            color: Color(0xffffA8B2D1),
                            iconSize: 16.0,
                            onPressed: () {}
                          ),
                        IconButton(
                            icon: Icon(Icons.call),
                            color: Color(0xffffA8B2D1),
                            onPressed: () {},
                            iconSize: 16.0,
                          ),
                        IconButton(
                            icon: Icon(Icons.phone),
                            color: Color(0xffffA8B2D1),
                            iconSize: 16.0,
                            onPressed: () {}
                          ),
                        IconButton(
                            icon: Icon(Icons.mail),
                            color: Color(0xffffA8B2D1),
                            iconSize: 16.0,
                            onPressed: () {}
                          ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Container(
                            height: 100,
                            width: 2,
                            color: Colors.grey.withOpacity(0.4),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: Container(
                    height: MediaQuery.of(context).size.height - 82,
                    child: SingleChildScrollView(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 92.0,
                          ),
                          CustomText(
                            text: "Hi, my name is",
                            textsize: 16.0,
                            color: Color(0xff41FBDA),
                            letterSpacing: 3.0,
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          CustomText(
                            text: "Tushar Nikam.",
                            textsize: 68.0,
                            color: Color(0xffCCD6F6),
                            fontWeight: FontWeight.w900,
                          ),
                          SizedBox(
                            height: 4.0,
                          ),
                          CustomText(
                            text: "I build things for the Android and web.",
                            textsize: 56.0,
                            color: Color(0xffCCD6F6),
                            fontWeight: FontWeight.w700,
                          ),
                          SizedBox(
                            height: 16.0,
                          ),
                          Wrap(
                            children: [
                              Text(
                                "I'm a freelancer based in Nashik, IN specializing in \nbuilding (and occasionally designing) exceptional websites, \napplications, and everything in between.",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16.0,
                                  letterSpacing: 2.75,
                                  wordSpacing: 0.75,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 92.0,
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            color: Color(0xff64FFDA),
                            child: Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.all(0.75),
                              height: 56.0,
                              width: 160.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.0),
                                color: Color(0xff0A192F),
                              ),
                              child: MaterialButton(
                                onPressed: () {},
                                hoverColor: Colors.green,
                                child: Text(
                                  "Get In Touch",
                                  style: TextStyle(
                                    color: Color(0xff64FFDA),
                                    letterSpacing: 2.75,
                                    wordSpacing: 1.0,
                                    fontSize: 15.0,
                                  ),
                                ),
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 150.0,
                          ),

                          //About Me
                          About(),

                          SizedBox(
                            height: 6.0,
                          ),

                          //Where I've Worked
                          Container(
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width - 100,
                            color: Colors.tealAccent,
                          ),

                          SizedBox(
                            height: 6.0,
                          ),

                          //Some Things I've Built Main Project
                          Container(
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width - 100,
                            color: Colors.lightBlue,
                          ),

                          SizedBox(
                            height: 6.0,
                          ),

                          //other Projects
                          Container(
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width - 100,
                            color: Colors.deepOrangeAccent,
                          ),

                          SizedBox(
                            height: 6.0,
                          ),

                          //Get In Touch
                          Container(
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width - 100,
                            color: Colors.orange,
                          ),

                          SizedBox(
                            height: 6.0,
                          ),

                          //Footer
                          Container(
                            height: MediaQuery.of(context).size.height / 4,
                            width: MediaQuery.of(context).size.width - 100,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    )),
                  )
                ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.07,
                    height: MediaQuery.of(context).size.height - 82,
                    //color: Colors.orange,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        RotatedBox(
                          quarterTurns: 45,
                          child: Text("tusharnikam2021@gmail.com",
                          style: TextStyle(
                            color: Colors.grey.withOpacity(0.6),
                            letterSpacing: 3.0,
                            fontWeight: FontWeight.w700,
                          ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Container(
                            height: 100,
                            width: 2,
                            color: Colors.grey.withOpacity(0.4),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
