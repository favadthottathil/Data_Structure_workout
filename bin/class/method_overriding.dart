void main() {
  Child child = Child();

  child.favad(10);
}

class Parent {
  void favad(int a) {
    print('value of a');
  }
}

class Child extends Parent {
  @override
  void favad(int b) {
    print('value of b');
  }
}
