class Father{
  int age;
  Father(int age){
    this.age = age*2;
  }
}

class Child extends Father{
  int age;
  Child(this.age):super(age){
    this.age = age *3;
  }
  sayHi(){
    print(this.age);
  }
}

void main(){
  Child c = new Child(10);
  c.sayHi();
}