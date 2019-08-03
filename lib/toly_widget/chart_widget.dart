import 'package:flutter/material.dart';
import 'package:flutter_widget_unit/toly_widget/circle_image.dart';

enum ChartType { right, left }

class ChatItem {
  ImageProvider headIcon;
  double maxWith;
  ChartType type;
  String text;

  ChatItem(
      {this.headIcon,
      this.text,
      this.maxWith = 300,
      this.type = ChartType.right});
}

class NinePointBox extends StatelessWidget {
  final ImageProvider image;
  final Widget child;
  final Rect sliceRect;
  final double maxWith;
  final EdgeInsetsGeometry padding;

  NinePointBox(
      {Key key,
      @required this.image,
      this.child,
      @required this.sliceRect,
      this.maxWith = 300,
      this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          centerSlice: this.sliceRect,
          image: image,
        ),
      ),
      constraints: BoxConstraints(maxWidth: this.maxWith),
      padding: padding,
      child: child,
    );
  }
}

class ChatWidget extends StatelessWidget {
  final ChatItem chartItem;

  ChatWidget({Key key, this.chartItem}) : super(key: key);

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
    var head = Padding(
      padding: EdgeInsets.only(
        left: 10,
        right: 20,
      ),
      child: CircleImage(
        image: chartItem.headIcon,
      ),
    );

    var box = NinePointBox(
      sliceRect: Rect.fromLTRB(18, 24, 65, 25),
      padding: EdgeInsets.fromLTRB(15, 10, 20, 10.0),
      image: AssetImage(
        'images/right_chat.png',
      ),
      child: Text(
        chartItem.text,
        style: TextStyle(fontSize: 15.0),
      ),
    );

    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[box, head],
      ),
    );
  }

  Widget _buildLeft() {
    var head = Padding(
      padding: EdgeInsets.only(
        right: 10,
        left: 20,
      ),
      child: CircleImage(
        image: chartItem.headIcon,
      ),
    );

    var box = NinePointBox(
      sliceRect: Rect.fromLTRB(28, 26, 59, 27),
      padding: EdgeInsets.fromLTRB(20, 10, 10, 10.0),
      image: AssetImage(
        'images/left_chat.png',
      ),
      child: Text(
        chartItem.text,
        style: TextStyle(fontSize: 15.0),
      ),
    );

    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          head,
          box,
        ],
      ),
    );
  }
}

var text = "在那片沧海，还未变成桑田的时候，就有了古老的歌，环响在丛林山涧。其声嘹响脱俗，其声缥缈虚无，那是谁的高声颤颤，那是谁的笑语连连。";
var chart = ChatWidget(
  chartItem: ChatItem(
      headIcon: AssetImage("images/icon_head.png"),
      text: text,
      type: ChartType.left),
);

var show = Container(
  child: chart,
  color: Colors.grey.withAlpha(55),
  height: 800,
);
