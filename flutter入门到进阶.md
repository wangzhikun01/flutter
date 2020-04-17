

[系列教程](https://juejin.im/collection/5db25bcff265da06a19a304e)

# 01 flutter基础

## 1、widget

一切的显示都是 widget 。如果想要显示动起来，需要创建一个数据，然后利用 setState，将数据和widget 绑定起来，使其变为响应式。

flutter中的组件，可以进行一层层的嵌套。有的Widget 可以有一个子组件，有的则可以有多个：

* child ： 为一个组件添加一个子组件
* children ：为一个组件，添加一组子组件

## 2、`StatelessWidget` ：无状态组件

常见的显示方式，就是一个静态页面，就是一个 StatelessWidget 。`StatelessWidget` 类有一个 build 方法，能返回一个组件。

```dart
// 无状态组件
class DemoWidgetLess extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Text("一个简单的无状态组件");
  }
}
```

## 3、`StatefulWidget` ：有状态组件

有状态组件，就是将 组件 和 数据绑定在一起，当数据发生变化时，触发视图更新。

```dart
// 有状态组件

// 1. 首先创建一个有状态组件，继承 StatefulWidget
class DemoWidgetFull extends StatefulWidget {
    // 2. 可以设置构造函数，成员属性等
  String name;
  DemoWidgetFull(this.name);

    // 3. 必须 重写一个 creatState 方法，该方法返回这个组件的 state 类
  @override
  _DemoWidgetFullState createState() => _DemoWidgetFullState(name);
}

// 4. 创建有状态组件的 state 类，继承自 State ，泛型可以限制为 StatefulWidget ，或者 当前组件
class _DemoWidgetFullState<DemoWidgetFull> extends State<StatefulWidget> {
    // 5. 可以给 state 设置成员变量和构造函数
  String name;
  _DemoWidgetFullState(this.name);

    // 6. state 的生命周期函数，初始化，调用一次
  @override
  void initState() {
    super.initState();
    setState(() {
      this.name = "在setState里变了值";
    });
  }
// 7. state 生命周期函数，销毁时，调用一次
  @override
  void dispose() {
    super.dispose();
  }
// 8. state 生命周期函数，更新时
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }
// 9.state 返回一个组件，该组件使用了state 的成员属性，当属性值发生变化时，会自动重新build，返回新的视图
  @override
  Widget build(BuildContext context) {
    return Text(this.name ?? '这是一个有状态组件');
  }
}
```

## 4、State 的生命周期

state 整体上分为三个大的周期函数：创建、更新、销毁。[参考](https://my.oschina.net/u/4195936/blog/3106247)



### 创建阶段

* state 被实例化，其所属的 StatefulWidget 调用 createState 方法，然后触发 state 类的 构造函数。这个时候可以在构造函数中添加一些初始化的数据，用来生成默认的 widget。
* 调用

































