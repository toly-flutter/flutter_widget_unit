import 'package:flutter/material.dart';
import 'package:flutter_widget_unit/toly_widget/circle_head.dart';

enum ChartType { right, left }

class ChartItem {
  ImageProvider headIcon;
  double maxWith;
  ChartType type;
  String text;

  ChartItem(
      {this.headIcon,
        this.text,
        this.maxWith = 300,
        this.type = ChartType.right});
}

class ChartWidget extends StatelessWidget {
  final ChartItem chartItem;
  final Rect rect;

  ChartWidget({Key key, this.chartItem,this.rect}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (chartItem.type) {
      case ChartType.right:
        return _buildRight();
        break;
      case ChartType.left:
        return _buildLeft();
        break;
    }
  }

  Widget _buildRight() {



    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              image: DecorationImage(
                centerSlice: Rect.fromLTWH(12, 13, 5, 8),
                image: AssetImage(
                  'images/right_content.png',
                ),
              ),
            ),
            constraints: BoxConstraints(maxWidth: chartItem.maxWith),
            padding: EdgeInsets.fromLTRB(15, 10, 15, 10.0),
            child: Text(
              chartItem.text,
              style: TextStyle(fontSize: 15.0),
            ),
          ),
          Container(
              padding: EdgeInsets.only(top: 20),
              child: Image.asset(
                'images/right_arrow.png',
                height: 18,
              )),
          Padding(
            padding: EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            child: CircleHead(
              image: chartItem.headIcon,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildLeft() {
    print(rect);

    var head = Padding(
      padding: EdgeInsets.only(
        right: 10,
        left: 20,
      ),
      child: CircleHead(
        image: chartItem.headIcon,
      ),
    );

    var arrow = Container(
        padding: EdgeInsets.only(top: 15),
        child: Image.asset(
          'images/he.png',
          height: 18,
        ));

    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          head,
//          arrow,
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                centerSlice: rect,
                image: AssetImage(
                  'images/block.jpg',
                ),
              ),
            ),
            constraints: BoxConstraints(maxWidth: chartItem.maxWith),
            //调整文字的位置，要不然会跟image并排
            padding: EdgeInsets.fromLTRB(15, 10, 15, 10.0),
            child: Text(
              chartItem.text,
              style: TextStyle(fontSize: 15.0),
            ),
          ),
        ],
      ),
    );
  }
}

var chart = ChartWidget(
  chartItem: ChartItem(
      headIcon: AssetImage("images/icon_head.png"),
      text: "在那片沧海，还未变成桑田的时候，就有了古老的歌，环响在丛林山涧。其声嘹响脱俗，其声缥缈虚无，那是谁的高声颤颤，那是谁的笑语连连。",
      type: ChartType.left
  ),
);

//var show =Container(child:chart,color: Colors.grey.withAlpha(55),height: 800,);

var show =IAmAngry();
class IAmAngry extends StatefulWidget {


  @override
  _IAmAngryState createState() => _IAmAngryState();
}

class _IAmAngryState extends State<IAmAngry> {
  double left=50;//67
  double top=50;//86.1
  double right=100;//74.4
  double bottom=100;//88.5

  @override
  Widget build(BuildContext context) {
    var fuck=ChartWidget(
      rect: Rect.fromLTRB(left, top, right, bottom),
      chartItem: ChartItem(
          headIcon: AssetImage("images/icon_head.png"),
          text: "在那片沧海，还未变成桑田的时候，就有了古老的歌，环响在丛林山涧。其声嘹响脱俗，其声缥缈虚无，那是谁的高声颤颤，那是谁的笑语连连。"*3,
          type: ChartType.left
      ),
    );

    var sliderL=Slider(
      value: left,
      max: 150,
//      divisions: 3,
      onChanged: (v){
        left=v;
        setState(() {

        });
      },
    );

    var sliderR=Slider(
      value: right,
      max: 150,
//      divisions: 3,
      onChanged: (v){
        right=v;
        setState(() {

        });
      },
    );
    var sliderT=Slider(
      value: top,
      max: 150,
//      divisions: 3,
      onChanged: (v){
        top=v;
        setState(() {

        });
      },
    );

    var sliderB=Slider(
      value: bottom,
      max: 150,
//      divisions: 3,
      onChanged: (v){
        bottom=v;
        setState(() {

        });
      },
    );

    return Column(children: <Widget>[fuck,
      Row(children: <Widget>[sliderL,Text("left:"+left.toStringAsFixed(1))],),
      Row(children: <Widget>[sliderT,Text("top:"+top.toStringAsFixed(1))],),
      Row(children: <Widget>[sliderR,Text("right:"+right.toStringAsFixed(1))],),
      Row(children: <Widget>[sliderB,Text("bottom:"+bottom.toStringAsFixed(1))],),
    ],);
  }
}