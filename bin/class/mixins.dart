void main() {
  Paren paren = Paren();

  paren.my();
}

mixin Favad on Paren {
  void mixin() {
    print('mixins');
  }
}

class Paren {

  void my(){}
  
}

class Hello extends Paren with Favad {
  
}
