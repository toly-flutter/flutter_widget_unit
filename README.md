# Flutter 控件集

> 本项目由`张风捷特烈`总结归纳，有问题可issues,想要交流可微信：`zdl1994328`  
> 更多技术博客，详见
> [张风捷特烈的掘金专栏](https://juejin.im/user/5b42c0656fb9a04fe727eb37)

---

#### 1.布局组件

>关于常用的布局组件，下面我画了一幅图表达一下体系:

![](https://user-gold-cdn.xitu.io/2019/7/12/16be3c8b9e5507a0?w=2162&h=1134&f=png&s=263958)
---
##### 1.1:单子元素布局组件之`SingleChildRenderObjectWidget`

```
Widget
|---RenderObjectWidget  
    |---SingleChildRenderObjectWidget  
        |---Align
            |---Center
        |---Padding
        |---Offstage
        |---Baseline
        |---Transform
        |---SizedBox
        |---FittedBox
        |---AspectRatio
        |---ConstrainedBox
        |---LimitedBox
        |---OverflowBox
        |---SizedOverflowBox
        |---FractionallySizedBox
        |---IntrinsicWidth
        |---IntrinsicHeight
        |---CustomPaint
        |---CustomSingleChildLayout
```

 | |||||
---|---|---|---|---
[Align](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter组件集/布局组件//RenderObjectWidget/SingleChildRenderObjectWidget/Align.md)| [Center](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter组件集/布局组件//RenderObjectWidget/SingleChildRenderObjectWidget/Center.md)|[Padding](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter组件集/布局组件//RenderObjectWidget/SingleChildRenderObjectWidget/Padding.md)|[Offstage](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter组件集/布局组件/RenderObjectWidget/SingleChildRenderObjectWidget/Offstage.md)| [Baseline](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter组件集/布局组件/RenderObjectWidget/SingleChildRenderObjectWidget/Baseline.md)
[Transform](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter组件集/布局组件/RenderObjectWidget/SingleChildRenderObjectWidget/Transform.md)| [SizedBox](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter组件集/布局组件/RenderObjectWidget/SingleChildRenderObjectWidget/SizedBox.md)|[FittedBox](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter组件集/布局组件/RenderObjectWidget/SingleChildRenderObjectWidget/FittedBox.md)|[AspectRatio](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter组件集/布局组件/RenderObjectWidget/SingleChildRenderObjectWidget/AspectRatio.md)| [ConstrainedBox](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter组件集/布局组件/RenderObjectWidget/SingleChildRenderObjectWidget/ConstrainedBox.md)
[LimitedBox](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter组件集/布局组件/RenderObjectWidget/SingleChildRenderObjectWidget/LimitedBox.md)| [OverflowBox](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter组件集/布局组件/RenderObjectWidget/SingleChildRenderObjectWidget/OverflowBox.md)|[SizedOverflowBox](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter组件集/布局组件/RenderObjectWidget/SingleChildRenderObjectWidget/SizedOverflowBox.md)|[FractionallySizedBox](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter组件集/布局组件/RenderObjectWidget/SingleChildRenderObjectWidget/FractionallySizedBox.md)| [IntrinsicWidth](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter组件集/布局组件/RenderObjectWidget/SingleChildRenderObjectWidget/IntrinsicWidth.md)
[IntrinsicHeight](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter组件集/布局组件/RenderObjectWidget/SingleChildRenderObjectWidget/IntrinsicHeight.md)| [CustomPaint](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter组件集/布局组件/RenderObjectWidget/SingleChildRenderObjectWidget/CustomPaint.md)|-|-| -


---

##### 1.2:单子元素布局组件之`StatelessWidget`

```
Widget
|---StatelessWidget  
    |---Container  
    |---Card
```

 | |||||
---|---|---|---|---
[Container](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter组件集/布局组件/StatelessWidget/Container.md)| [Card](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter组件集/布局组件/StatelessWidget/Card.md)|-|-| -

---

##### 1.3:多子元素布局组件之`MultiChildRenderObjectWidget`

```
Widget
|---RenderObjectWidget  
    |---MultiChildRenderObjectWidget  
        |---Flex
            |---Row
            |---Column
        |---Stack
            |---IndexedStack
        |---Flow
        |---Wrap
```

 | |||||
---|---|---|---|---
[Flex](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter组件集/布局组件/RenderObjectWidget/MultiChildRenderObjectWidget/Flex.md)| [Row](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter组件集/布局组件/RenderObjectWidget/MultiChildRenderObjectWidget/Row.md)|[Column](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter组件集/布局组件/RenderObjectWidget/MultiChildRenderObjectWidget/Column.md)|[IndexedStack](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter组件集/布局组件/RenderObjectWidget/MultiChildRenderObjectWidget/IndexedStack.md)|[Flow](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter组件集/布局组件/RenderObjectWidget/MultiChildRenderObjectWidget/Flow.md)
[Wrap](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter组件集/布局组件/RenderObjectWidget/MultiChildRenderObjectWidget/Wrap.md)| -|-|-|-

---

##### 1.4:多子元素布局组件之其他

```
Widget
|---RenderObjectWidget  
    |---Table  
|---StatelessWidget
    |---ScrollView
        |---BoxScrollView
            |---ListView
            |---GridView
```

 | |||||
---|---|---|---|---
[Table](null)| [ListView](null)|[GridView](null)|-|-

---

#### 常见属性一览
 | |||||
---|---|---|---|---
[alignment](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter属性集/alignment:AlignmentGeometry.md)| [baselineType](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter属性集/baselineType:TextBaseline.md)|[clipBehavior](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter属性集/clipBehavior:Clip.md)|[color](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter属性集/color:Color.md)|[constraints](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter属性集/constraints:BoxConstraints.md)|[fit](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter属性集/fit:BoxFit.md)
[decoration](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter属性集/decoration:Decoration.md)| [foregroundDecoration](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter属性集/foregroundDecoration:Decoration.md)|[margin](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter属性集/margin:EdgeInsetsGeometry.md)|[padding](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter属性集/padding:EdgeInsetsGeometry.md)|[shape](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter属性集/shape:ShapeBorder.md)|[strutStyle](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter属性集/strutStyle:StrutStyle.md)
[style](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter属性集/style:TextStyle.md)| [transform](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter属性集/transform:Matrix4.md)

