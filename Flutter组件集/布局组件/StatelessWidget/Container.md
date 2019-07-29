#### Container:单子-容器-布局

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
    |---widgets
        |---container.dart:244
```


---

##### 3.所有属性


属性名 | 类型 | 默认|含义
---|---|---|---
child | Widget|--|被包裹组件
width | double|--|容器宽
height | double|--|容器高
[color](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter属性集/color:Color.md)|Color|白色|容器内部颜色
[padding](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter属性集/padding:EdgeInsetsGeometry.md)| EdgeInsetsGeometry|全0|内边距
[margin](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter属性集/margin:EdgeInsetsGeometry.md)| EdgeInsetsGeometry|全0|外边距
[alignment](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter属性集/alignment:AlignmentGeometry.md)|AlignmentGeometry||对齐方式
[constraints](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter属性集/constraints:BoxConstraints.md)|BoxConstraints||约束
[transform](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter属性集/transform:Matrix4.md)|Matrix4||变换
[decoration](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter属性集/decoration:Decoration.md)|Decoration|无|装饰线
[foregroundDecoration](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter属性集/foregroundDecoration:Decoration.md)|Decoration||前景装饰

---

##### 4.基本使用

>Container作为一个单子布局控件，直接继承自StatelessWidget  


![](https://user-gold-cdn.xitu.io/2019/7/8/16bd028b8213d7a8?w=1101&h=392&f=png&s=41227)


```
---->[widget_show/material_show.dart]----
var container = Container(//容器���件
  color: Colors.lightBlueAccent,//容器的颜色
  width: 150,//容器宽
  height: 100,//容器高
  child: Text("Container"),//容器内部组件
);
```

---

>本项目由`张风捷特烈`总结归纳，有问题可issues,想要交流可微信：`zdl1994328`  
更多精彩技术博客，详见 [张风捷特烈的掘金专栏](https://juejin.im/user/5b42c0656fb9a04fe727eb37)       