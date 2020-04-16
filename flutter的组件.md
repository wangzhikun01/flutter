# 01- `MaterialApp` 组件

入口组件，生成的实例返回给 flutter 程序入口函数。其作为程序的根元素，起到入口的作用。

```dart
MaterialApp({
  Key key,
  this.title = '', // 设备用于为用户识别应用程序的单行描述
  this.home, // 应用程序默认路由的小部件,用来定义当前应用打开的时候，所显示的界面
  this.color, // 在操作系统界面中应用程序使用的主色。
  this.theme, // 应用程序小部件使用的颜色。
  this.routes = const <String, WidgetBuilder>{}, // 应用程序的顶级路由表
  this.navigatorKey, // 在构建导航器时使用的键。
  this.initialRoute, // 如果构建了导航器，则显示的第一个路由的名称
  this.onGenerateRoute, // 应用程序导航到指定路由时使用的路由生成器回调
  this.onUnknownRoute, // 当 onGenerateRoute 无法生成路由(initialRoute除外)时调用
  this.navigatorObservers = const <NavigatorObserver>[], // 为该应用程序创建的导航器的观察者列表
  this.builder, // 用于在导航器上面插入小部件，但在由WidgetsApp小部件创建的其他小部件下面插入小部件，或用于完全替换导航器
  this.onGenerateTitle, // 如果非空，则调用此回调函数来生成应用程序的标题字符串，否则使用标题。
  this.locale, // 此应用程序本地化小部件的初始区域设置基于此值。
  this.localizationsDelegates, // 这个应用程序本地化小部件的委托。
  this.localeListResolutionCallback, // 这个回调负责在应用程序启动时以及用户更改设备的区域设置时选择应用程序的区域设置。
  this.localeResolutionCallback, // 
  this.supportedLocales = const <Locale>[Locale('en', 'US')], // 此应用程序已本地化的地区列表 
  this.debugShowMaterialGrid = false, // 打开绘制基线网格材质应用程序的网格纸覆盖
  this.showPerformanceOverlay = false, // 打开性能叠加
  this.checkerboardRasterCacheImages = false, // 打开栅格缓存图像的棋盘格
  this.checkerboardOffscreenLayers = false, // 打开渲染到屏幕外位图的图层的棋盘格
  this.showSemanticsDebugger = false, // 打开显示框架报告的可访问性信息的覆盖
  this.debugShowCheckedModeBanner = true, // 在选中模式下打开一个小的“DEBUG”横幅，表示应用程序处于选中模式
})
```

`MaterialApp` 组件构造时，home、routes、onGenerateRoute 这三个属性，必须选择其中一个进行传入。

# 02-`Scaffold` 组件

一个容器，实现了基本的可视化布局结构，这个容器组件提供了显示 drawer、appBar 等的api。

```dart
const Scaffold({
  Key key,
  this.appBar, // 标题栏
  this.body,  // 用于显示当前界面主要内容的Widget
  this.floatingActionButton, // 一个悬浮在body上的按钮，默认显示在右下角
  this.floatingActionButtonLocation, // 用于设置floatingActionButton显示的位置
  this.floatingActionButtonAnimator, // floatingActionButton移动到一个新的位置时的动画
  this.persistentFooterButtons, // 多状态按钮
  this.drawer, // 左侧的抽屉菜单
  this.endDrawer, //  右'侧的抽屉菜单
  this.bottomNavigationBar,// 底部导航栏。
  this.bottomSheet, // 显示在底部的工具栏
  this.backgroundColor,// 内容的背景颜色
  this.resizeToAvoidBottomPadding = true, // 控制界面内容 body 是否重新布局来避免底部被覆盖，比如当键盘显示的时候，重新布局避免被键盘盖住内容。
  this.primary = true,// Scaffold是否显示在页面的顶部
}) 
```

# 03-`ThemeData` 组件

主题组件，用于定义程序的颜色、排版等.

在使用中，可以选择给全局范围内来使用，也可以使用`Theme` widget 来创建一个局部主题，为某个页面单独设置主题。



```dart
factory ThemeData({
  Brightness brightness, // 应用整体主题的亮度。用于按钮之类的小部件，以确定在不使用主色或强调色时选择什么颜色。
  MaterialColor primarySwatch,// 定义一个单一的颜色以及十个色度的色块。
  Color primaryColor, // 应用程序主要部分的背景颜色(toolbars、tab bars 等)
  Brightness primaryColorBrightness, // primaryColor的亮度。用于确定文本的颜色和放置在主颜色之上的图标(例如工具栏文本)。
  Color primaryColorLight, // primaryColor的浅色版
  Color primaryColorDark, // primaryColor的深色版
  Color accentColor, // 小部件的前景色(旋钮、文本、覆盖边缘效果等)。
  Brightness accentColorBrightness, // accentColor的亮度。
  Color canvasColor, //  MaterialType.canvas 的默认颜色
  Color scaffoldBackgroundColor, // Scaffold的默认颜色。典型Material应用程序或应用程序内页面的背景颜色。
  Color bottomAppBarColor, // BottomAppBar的默认颜色
  Color cardColor, // Card的颜色
  Color dividerColor, // Divider和PopupMenuDivider的颜色，也用于ListTile之间、DataTable的行之间等。
  Color highlightColor, // 选中在泼墨动画期间使用的突出显示颜色，或用于指示菜单中的项。
  Color splashColor,  // 墨水飞溅的颜色。InkWell
  InteractiveInkFeatureFactory splashFactory, // 定义由InkWell和InkResponse反应产生的墨溅的外观。
  Color selectedRowColor, // 用于突出显示选定行的颜色。
  Color unselectedWidgetColor, // 用于处于非活动(但已启用)状态的小部件的颜色。例如，未选中的复选框。通常与accentColor形成对比。也看到disabledColor。
  Color disabledColor, // 禁用状态下部件的颜色，无论其当前状态如何。例如，一个禁用的复选框(可以选中或未选中)。
  Color buttonColor, // RaisedButton按钮中使用的Material 的默认填充颜色。
  ButtonThemeData buttonTheme, // 定义按钮部件的默认配置，如RaisedButton和FlatButton。
  Color secondaryHeaderColor, // 选定行时PaginatedDataTable标题的颜色。
  Color textSelectionColor, // 文本框中文本选择的颜色，如TextField
  Color cursorColor, // 文本框中光标的颜色，如TextField
  Color textSelectionHandleColor,  // 用于调整当前选定的文本部分的句柄的颜色。
  Color backgroundColor, // 与主色形成对比的颜色，例如用作进度条的剩余部分。
  Color dialogBackgroundColor, // Dialog 元素的背景颜色
  Color indicatorColor, // 选项卡中选定的选项卡指示器的颜色。
  Color hintColor, // 用于提示文本或占位符文本的颜色，例如在TextField中。
  Color errorColor, // 用于输入验证错误的颜色，例如在TextField中
  Color toggleableActiveColor, // 用于突出显示Switch、Radio和Checkbox等可切换小部件的活动状态的颜色。
  String fontFamily, // 文本字体
  TextTheme textTheme, // 文本的颜色与卡片和画布的颜色形成对比。
  TextTheme primaryTextTheme, // 与primaryColor形成对比的文本主题
  TextTheme accentTextTheme, // 与accentColor形成对比的文本主题。
  InputDecorationTheme inputDecorationTheme, // 基于这个主题的 InputDecorator、TextField和TextFormField的默认InputDecoration值。
  IconThemeData iconTheme, // 与卡片和画布颜色形成对比的图标主题
  IconThemeData primaryIconTheme, // 与primaryColor形成对比的图标主题
  IconThemeData accentIconTheme, // 与accentColor形成对比的图标主题。
  SliderThemeData sliderTheme,  // 用于呈现Slider的颜色和形状
  TabBarTheme tabBarTheme, // 用于自定义选项卡栏指示器的大小、形状和颜色的主题。
  CardTheme cardTheme, // Card的颜色和样式
  ChipThemeData chipTheme, // Chip的颜色和样式
  TargetPlatform platform, 
  MaterialTapTargetSize materialTapTargetSize, // 配置某些Material部件的命中测试大小
  PageTransitionsTheme pageTransitionsTheme, 
  AppBarTheme appBarTheme, // 用于自定义Appbar的颜色、高度、亮度、iconTheme和textTheme的主题。
  BottomAppBarTheme bottomAppBarTheme, // 自定义BottomAppBar的形状、高度和颜色的主题。
  ColorScheme colorScheme, // 拥有13种颜色，可用于配置大多数组件的颜色。
  DialogTheme dialogTheme, // 自定义Dialog的主题形状
  Typography typography, // 用于配置TextTheme、primaryTextTheme和accentTextTheme的颜色和几何TextTheme值。
  CupertinoThemeData cupertinoOverrideTheme 
})
```



# 04-`Text` 组件

用来显示一段文本。根据使用场景的不同，提供了命名构造函数

```dart
// 默认的构造函数
const Text(this.data, // 内容
{
  Key key,
  this.style, // 样式，需要传入一个TextStyle对象，决定Text的颜色、字体、字体大小、行间距、字体样式等
  this.strutStyle, // 使用的支柱风格
  this.textAlign, // 对齐方式
  this.textDirection, // 文本方向
  this.locale, //
  this.softWrap, // 是否允许换行显示
  this.overflow, // 超出屏幕显示方式
  this.textScaleFactor, // 每个逻辑像素的字体像素数，
  this.maxLines, // 最大行数
  this.semanticsLabel, // 文本的另一个语义标签
})

// 可以显示不同样式textSpan的段落。
const Text.rich(this.textSpan, { // 初始化一个 TextSpan
  Key key,
  this.style,
  this.strutStyle,
  this.textAlign,
  this.textDirection,
  this.locale,
  this.softWrap,
  this.overflow,
  this.textScaleFactor,
  this.maxLines,
  this.semanticsLabel,
})

// 需配合Text.rich一起使用
const TextSpan({
  this.style,
  this.text,
  this.children,
  this.recognizer,
});
```

## style：样式

TextStyle的构造方法如下：

```dart
const TextStyle({
  this.inherit = true,
  this.color, // 字体颜色
  this.fontSize, // 字体大小
  this.fontWeight, 
  this.fontStyle,  
  this.letterSpacing, // 字间距
  this.wordSpacing, // 字符间距
  this.textBaseline,
  this.height, // 行高
  this.locale,
  this.foreground, // 前景色
  this.background, // 背景色
  this.shadows, // 阴影
  this.decoration, // 装饰
  this.decorationColor,// 装饰颜色
  this.decorationStyle, // 装饰样式
  this.debugLabel,
  String fontFamily, // 字体
  List<String> fontFamilyFallback,
  String package,
})
```

## textAlign:文本对齐方式

值为枚举值，枚举的类是   `TextAlign`

【left：左对齐】

【right：右对齐】

【center：居中对齐】

【justify：自适应，和textDirection有关】

【start：文本开头，和textDirection有关】

【end：文本结尾,和textDirection有关】

## textDirection：文本方向

值是枚举值，枚举的类 `TextDirection`

【rtl：right to left 从右向左】

【ltr：left to right 从左向右】

## overflow:文本溢出后的显示方式

```dart
enum TextOverflow {
  /// Clip the overflowing text to fix its container.
    /////剪辑溢出的文本以修复其容器。
  clip,

  /// Fade the overflowing text to transparent.
    //将溢出的文本淡化为透明。
  fade,

  /// Use an ellipsis to indicate that the text has overflowed.
    //使用省略号表示文本已溢出。
  ellipsis,

  /// Render overflowing text outside of its container.
    //将溢出的文本呈现在其容器之外。
  visible,
}
```



## Text.rich 命名构造函数

设置一段 `TextSpan` 的样式。一个TextSpan就是一个段落。



















