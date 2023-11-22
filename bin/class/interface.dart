void main() {
  Favad favad = Favad();
  favad.hello();
  favad.hi();
}

class Interface1 {
  void hello() {
    print('say hello');
  }
}

class Interface2 {
  void hi() {
    print('say hi');
  }
}

class Favad implements Interface1, Interface2 {
  @override
  void hello() {
    print('favad say hello');
  }

  @override
  void hi() {
    print('favad say hi');
  }
}
