import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
  
  final String text;
  //final Function ontab;

  AppBarTitle({@required this.text, /*@required this.ontab*/});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14.0,), 
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14.0,
            letterSpacing: 3.0,
            color: Color(0xffBAD0D0),
          ),
        ),
      ),
    );
  }
}