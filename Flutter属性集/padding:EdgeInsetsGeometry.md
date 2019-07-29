##### 1.padding属性
> 其对象属于:EdgeInsetsGeometry类，六个double属性

```
---->[类衍生关系]----
AlignmentGeometry
    |---EdgeInsetsDirectional
    |---EdgeInsets

---->[类的位置]----
flutter/packages/flutter/lib/src
    |---painting
        |---edge_insets.dart:25
```

---

##### 2.目前发现于持有该属性的组件有: 


|   |  |
|---|---|
| [Padding](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter组件集/布局组件//RenderObjectWidget/SingleChildRenderObjectWidget/Padding.md)  | [Container](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter组件集/布局组件/StatelessWidget/Container.md)

---

##### 3、padding属性使用

>padding主要用于一个元素的内边距，注意它与[margin](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter属性集/margin:EdgeInsetsGeometry.md)的区别。
常用EdgeInsets类对象，几个创建方法如下,运算符重载有`+,-,*,/,%,~/`  

![](https://user-gold-cdn.xitu.io/2019/7/12/16be3ef2ec1e6168?w=1864&h=889&f=png&s=33069)



```


//根据左上右下四个值构建EdgeInsets对象
const EdgeInsets.fromLTRB(this.left, this.top, this.right, this.bottom);

//构建左上右下四值相等的EdgeInsets对象
const EdgeInsets.all(double value)
  : left = value,
    top = value,
    right = value,
    bottom = value;
    
//根据指定属性构��EdgeInsets对象
const EdgeInsets.only({
  this.left = 0.0,
  this.top = 0.0,
  this.right = 0.0,
  this.bottom = 0.0,
});

//根据水平数值方向创建对称的EdgeInsets对象
const EdgeInsets.symmetric({
double vertical = 0.0,
double horizontal = 0.0,
}) : left = horizontal,
     top = vertical,
     right = horizontal,
     bottom = vertical;

//构建四个值全为0的EdgeInsets对象
static const EdgeInsets zero = EdgeInsets.only();
```

---

>本项目由`张风捷特烈`总结归纳，有问题可issues,想要交流可微信：`zdl1994328`  
更多精彩技术博客，详见 [张风捷特烈的掘金专栏](https://juejin.im/user/5b42c0656fb9a04fe727eb37)