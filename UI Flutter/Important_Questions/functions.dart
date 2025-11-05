void greet(String name) {
  print("Hello, $name!");
}

int add(int a, int b) => a + b;

void main() {
  greet("Om");
  print("Sum = ${add(5, 3)}");
}

//Output
Hello, Om!
Sum = 8
