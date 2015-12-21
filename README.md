# SubStringDemo
三种截取子字符串方式的demo

## 介绍
截取字符串是很常用的功能，NSString的截取主要有三种方式（下面说的字符串字符下标都是从0开始数）：
* 截取某个下标之前的字符串，结果`不包含`下标对应的字符
* 截取某个下标之后的字符串，结果`包含`下标对应的字符
* 截取一段字符串

## 效果图
![](https://github.com/Cloudox/SubStringDemo/blob/master/SubStringDemo.png)

## 实现方法
#### 1.截取某个下标之前的字符串，结果`不包含`下标对应的字符
```Objective-C
// 原字符串  
NSString *originalStr = @"Hello World";  
// 下标之前的子字符串，不含下标对应的字符  
NSString *toStr = [originalStr substringToIndex:5];  
// 结果为“Hello”  
```
这里字母"o"对应的下标为4，因为结果不包含下标对应的字符，所以要截取5之前的字符串。  
  
#### 2.截取某个下标之后的字符串，结果`包含`下标对应的字符
```Objective-C
// 原字符串  
NSString *originalStr = @"Hello World";  
// 下标之后的子字符串，包含下标对应字符  
NSString *fromStr = [originalStr substringFromIndex:6];  
// 结果为“World”  
```
这里字母"W"对应的下标为6，因为结果包含下标对应的字符，所以从6开始截取。  
  
#### 3.截取一段字符串
```Objective-C
// 原字符串  
NSString *originalStr = @"Hello World";  
// 下标之间的子字符串：第一个参数为开始下标，第二个参数为长度  
NSString *subStr = [originalStr substringWithRange:NSMakeRange(6, 2)];  
// 结果为“Wo”  
```
这里用到了一个Range类，这个方法有两个参数，第一个是截取的开始下标，"W"的下标为6，所以这里是从6开始；第二个参数，以前我以为是结束的下标，但是用起来频频闪退，后来才发现是表示`长度`，也就是我这里截取从下标6开始2个长度的字符，所以结果是"Wo"。

更多详情可以见[我的博客](http://blog.csdn.net/cloudox_/article/details/50372173)
