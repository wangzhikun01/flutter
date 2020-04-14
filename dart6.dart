main(){

}
 /**
  * 定义泛型接口
  */
abstract class A<T>{
  bind();
}
/**
 * 普通类，继承泛型接口
 */
class B<T> extends A<T>{
  @override
  bind() {
    // TODO: implement bind
    return null;
  }
}