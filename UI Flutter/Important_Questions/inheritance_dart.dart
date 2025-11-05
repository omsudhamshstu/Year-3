class Animal {
  void sound() => print("Animals make sounds");
}

class Dog extends Animal {
  void bark() => print("Dog barks");
}

void main() {
  var dog = Dog();
  dog.sound();
  dog.bark();
}

//output
Animals make sounds
Dog barks
