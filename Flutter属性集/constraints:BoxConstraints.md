
##### 1.constraints属性
> 其对象属于:BoxConstraints类，主要有四个double属性,分别代表最大最小宽高

```
---->[类衍生关系]----
Constraints
    |---BoxConstraints
    |---SliverConstraints

---->[类的位置]----
flutter/packages/flutter/lib/src
    |---rendering
        |---box.dart:86
```

---

##### 2.目前发现于持有该属性的组件有:
 | |||||
---|---|---|---|---
[ConstrainedBox](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter组件集/布局组件/RenderObjectWidget/SingleChildRenderObjectWidget/ConstrainedBox.md)|- |-|-|- 

---

##### 3.constraints属性使用
>通过下列方法可以创建BoxConstraints对象

```
---->[构造方法，传入四值]--------------
const BoxConstraints({
  this.minWidth = 0.0,
  this.maxWidth = double.infinity,
  this.minHeight = 0.0,
  this.maxHeight = double.infinity,
});

---->[tight方法，传入Size对象]--------------
BoxConstraints.tight(Size size)
  : minWidth = size.width,
    maxWidth = size.width,
    minHeight = size.height,
    maxHeight = size.height;
    
---->[tight方法，传入最小宽高，最大宽高无限]--------------
const BoxConstraints.tightFor({
  double width,
  double height,
}) : minWidth = width ?? 0.0,
     maxWidth = width ?? double.infinity,
     minHeight = height ?? 0.0,
     maxHeight = height ?? double.infinity;

---->[tightFor方法，传入最小宽高，最大宽高无限]--------------
const BoxConstraints.tightFor({
  double width,
  double height,
}) : minWidth = width ?? 0.0,
     maxWidth = width ?? double.infinity,
     minHeight = height ?? 0.0,
     maxHeight = height ?? double.infinity;

---->[tightForFinite，传入最小宽高，最大宽高无限]--------------
const BoxConstraints.tightForFinite({
  double width = double.infinity,
  double height = double.infinity,
}) : minWidth = width != double.infinity ? width : 0.0,
     maxWidth = width != double.infinity ? width : double.infinity,
     minHeight = height != double.infinity ? height : 0.0,
     maxHeight = height != double.infinity ? height : double.infinity;
     
---->[loose，传入最大宽高Size，最小宽高为0]-------------- 
BoxConstraints.loose(Size size)
  : minWidth = 0.0,
    maxWidth = size.width,
    minHeight = 0.0,
    maxHeight = size.height;
     
---->[expand，默认无限]-------------- 
const BoxConstraints.expand({
  double width,
  double height,
}) : minWidth = width ?? double.infinity,
     maxWidth = width ?? double.infinity,
     minHeight = height ?? double.infinity,
     maxHeight = height ?? double.infinity;

```


>本项目由`张风捷特烈`总结归纳，有问题可issues,想要交流可微信：`zdl1994328`  
更多精彩技术博客，详见 [张风捷特烈的掘金专栏](https://juejin.im/user/5b42c0656fb9a04fe727eb37)