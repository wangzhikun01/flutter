void main(){

}

// 定义抽象方法，门
abstract class men{
  int height;
  open();
}
// 定义抽象方法，窗子
abstract class chuang{
  int width;
  close();
}
// 定义普通类，通过接口的方式，继承门和窗子
class house implements men,chuang{
  int height;
  int width;
  open(){}
  close(){}
}