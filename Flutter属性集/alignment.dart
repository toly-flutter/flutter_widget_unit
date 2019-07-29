//循环生成Image控件
import 'package:flutter/material.dart';

formAlignments({double childWidth = 40, double fatherWidth = 110}) {
  var alignments = [
    Alignment.center,
    Alignment.centerLeft,
    Alignment.centerRight,
    Alignment.topCenter,
    Alignment.topLeft,
    Alignment.topRight,
    Alignment.bottomCenter,
    Alignment.bottomLeft,
    Alignment.bottomRight,
    Alignment(0, 0),
    Alignment(0.5, 0.5)
  ];
  var alignmentInfos = [
    "center",
    "centerLeft",
    "centerRight",
    "topCenter",
    "topLeft",
    "topRight",
    "bottomCenter",
    "bottomLeft",
    "bottomRight",
    "Alignment(0,0)",
    "Alignment(0.5,0.5)"
  ];

  var imgLi = <Widget>[];
  for (int i = 0; i < alignments.length; i++) {
    var childBox = Container(
      width: childWidth,
      height: childWidth,
      color: Colors.cyanAccent,
    );
    var align = Align(
      alignment: alignments[i],
      child: childBox,
    );
    var fatherBox = Container(
      margin: EdgeInsets.all(5),
      width: fatherWidth,
      height: fatherWidth * 0.618,
      color: Colors.grey,
      child: align,
    );

    imgLi.add(Column(
      children: <Widget>[fatherBox, Text(alignmentInfos[i])],
    ));
  }

  return Wrap(
    children: imgLi,
  );
}