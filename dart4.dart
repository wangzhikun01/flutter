void main(){
  // 实例化两个对象
  Widget item_list = new ItemList();
  Widget bar = new Bar();
  // 调用同一个方法
  item_list.bind();
  bar.bind();

}
// 父类
abstract class Widget{
  bind();
}
// 子类1
class Bar extends Widget{
  @override
  bind() {
    print('Bar 子类实现的 bind 方法');
  }
}
// 子类2
class ItemList extends Widget{
  @override
  bind() {
    print("ItemList 子类实现的 bind 方法");
  }
}