import 'package:flutter/material.dart';

class CircleHead extends StatelessWidget {
  final ImageProvider image;
  final double width;
  final double height;

  CircleHead({Key key,this.image,this.height=70,this.width=70}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    var headIcon = Container(//头部
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              offset: Offset(0.0, 0.0),
              blurRadius: 3.0,
              spreadRadius: 0.0,
            ),
          ],
        ),
        width: width,
        height: height,
        child: Padding(
          padding: EdgeInsets.all(3),
          child: CircleAvatar(
            backgroundImage: image,
          ),
        ));

    return headIcon;
  }

}