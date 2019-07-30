
##### 1.fit属性

> fit属性的对应类型为BoxFit枚举,值有七个

```
---->[lib/src/painting/box_fit.dart:15]----------------
enum BoxFit {
  fill,//填充
  contain,//包含
  cover,//封面
  fitWidth,//适应宽
  fitHeight,//适应高
  none,//无
  scaleDown,//按比例缩小
}
```

---


##### 2. 目前发现于持有该属性的组件有: 


|   |  |
|---|---|
| [Image](null)  | [FittedBox](https://github.com/toly-flutter/flutter_widget_unit/blob/master/Flutter组件集/布局组件/RenderObjectWidget/SingleChildRenderObjectWidget/FittedBox.md)

---

##### 3.fit属性使用


 `宽高比2：3测试结果`:

![](https://user-gold-cdn.xitu.io/2019/7/9/16bd5384f1af4713?w=1942&h=568&f=png&s=840424)

 `宽高比3：2测试结果`:

![](https://user-gold-cdn.xitu.io/2019/7/9/16bd53edefab0205?w=1950&h=558&f=png&s=840801)

 `图片小于容器尺寸下的测试结果`

![](https://user-gold-cdn.xitu.io/2019/7/9/16bd541e63a7d9a5?w=1970&h=564&f=png&s=526144)


---

>本项目由`张风捷特烈`总结归纳，有问题可issues,想要交流可微信：`zdl1994328`  
更多精彩技术博客，详见 [张风捷特烈的掘金专栏](https://juejin.im/user/5b42c0656fb9a04fe727eb37)