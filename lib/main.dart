import 'package:flutter/material.dart';

import 'toly_widget/chart_widget.dart';


void main() => runApp(MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter 之旅"),
        ),
        body:  Container(color: Colors.grey.withAlpha(66),child: show,)
    )
));

