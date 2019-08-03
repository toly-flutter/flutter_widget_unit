#### Icon-图标组件

##### 1.Widget支：

```
Widget 
    |---StatelessWidget
        |---Icon
```

---

##### 2.在SDK中的位置

```
flutter/packages/flutter/lib/src
    |---widgets
       |---icon.dart:47
```


---


##### 3.所有属性

属性名 | 类型 | 默认|含义
---|---|---|---
$[icon]|IconData |-|图标资源
size|double |-|大小
$[color]|Color |-|大小
$[textDirection]|TextDirection|-|文字方向

---

##### 4.基本使用

> 用起来比较简单，就不多说了

![](https://upload-images.jianshu.io/upload_images/11369985-157e4d9b843aad74.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

```
var show = Icon(
  Icons.local_shipping,
  color: Colors.pink,
  size: 50.0,
  textDirection: TextDirection.rtl,
);
```

---

>本项目由`张风捷特烈`总结归纳，有问题可issues,想要交流可微信：`zdl1994328`  
更多精彩技术博客，详见 [张风捷特烈的掘金专栏](https://juejin.im/user/5b42c0656fb9a04fe727eb37)