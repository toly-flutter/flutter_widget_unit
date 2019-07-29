#### Card:单子-卡片-布局

##### 1.Widget支：

```
Widget 
    |---StatelessWidget
        |---Container
```

---

##### 2.在SDK中的位置

```
flutter/packages/flutter/lib/src
    |---material
        |---card.dart:99
```


---

##### 3.所有属性

属性名 | 类型 | 默认|含义
---|---|---|---
[color](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter属性集/color:Color.md)|Color|白色|容器内部颜色
elevation | double|--|阴影高度
borderOnForeground | bool|true|边框是否在前景
[margin](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter属性集/margin:EdgeInsetsGeometry.md)| EdgeInsetsGeometry|全0|外边距
[shape](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter属性集/shape:ShapeBorder.md)| Clip|Clip.none|裁剪行为
[clipBehavior](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter属性集/clipBehavior:Clip.md)| Clip|Clip.none|裁剪行为
child| Widget|--|被包裹组件
semanticContainer|bool|true|--

---

##### 4.基本使用

> Card也是只能包含一个子元素,并将子元素呈现有阴影的卡片效果 

![](https://user-gold-cdn.xitu.io/2019/7/8/16bd05aacaa1f350?w=1496&h=496&f=png&s=54318)


```
var container = Container(//容器组件
  color: Colors.lightBlueAccent,//容器的颜色
  width: 150,//容器宽
  height: 100,//容器高
  child: Text("Container"),//容器内部组件
  padding: EdgeInsets.all(20),//内边距
  margin: EdgeInsets.fromLTRB(5, 10, 15, 20),//外边距
);

var card = Card(//卡片组件
  elevation: 10,//阴影深度
  color: Color(0xffffffff),//卡片颜色
  child: container,//卡片内部组件
  margin: EdgeInsets.only(left: 40,top: 20),//外边距
);
```

---

>本项目由`张风捷特烈`总结归纳，有问题可issues,想要交流可微信：`zdl1994328`  
更多精彩技术博客，详见 [张风捷特烈的掘金专栏](https://juejin.im/user/5b42c0656fb9a04fe727eb37)       