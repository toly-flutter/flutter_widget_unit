import 'package:flutter/material.dart';

bad() {
  var headIcon = Container(
      //左边头部
      decoration: BoxDecoration(
        //圆形装饰线
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          //阴影
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            offset: Offset(0.0, 0.0),
            blurRadius: 3.0,
            spreadRadius: 0.0,
          ),
        ],
      ),
      width: 70,
      height: 70,
      child: Padding(
          padding: EdgeInsets.all(3),
        child: CircleAvatar(
          backgroundImage: AssetImage("images/wy_200x300.jpg"),
        ),
      ));
  var center = Column(
    //中间介绍
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      Text("以梦为马", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      Padding(
        padding: EdgeInsets.only(top: 8),
        child: Text(
          "作者:海子",
          style: TextStyle(color: Colors.grey, fontSize: 12),
        ),
      ),
    ],
  );
  var summary = Text(
    //尾部摘要
    "我要做远方的忠诚的儿子，和物质的短暂情人，和所有以梦为马的诗人一样，我不得不和烈士和小丑走在同一道路上",
    maxLines: 3,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(color: Colors.grey, fontSize: 12),
  );
  var item = Row(
    //条目拼合
    children: <Widget>[
      SizedBox(width: 10),
      headIcon,
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: center,
      ),
      Expanded(
        child: summary,
      ),
      SizedBox(width: 10),
    ],
  );
  var show = Card(
    //卡片化+事件监听
    elevation: 5,
    child: Padding(padding:EdgeInsets.all(10),child: item),
  );

  return show;
}

var show = bad();
