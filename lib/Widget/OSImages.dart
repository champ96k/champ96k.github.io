import 'package:flutter/material.dart';

class OSImages extends StatelessWidget {
  final String image;
  OSImages({this.image});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
       color: Color(0xff64FFDA).withOpacity(0.4),
      child: Padding(
        padding: const EdgeInsets.all(2.75),
        child: Image(
          height: size.height * 0.73,
          width: size.width * 0.17,
          fit: BoxFit.cover,
          image: AssetImage(image),
        ),
      ),
    );
  }
}
