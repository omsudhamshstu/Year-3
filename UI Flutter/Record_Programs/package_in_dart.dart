// Example with 'math' package
import 'dart:math';

void main() {
  var random = Random();

  // Generate a single random number (0–49)
  int singleNum = random.nextInt(50);
  print("Single Random Number: $singleNum");

  // Generate 5 random integers
  print("\nList of 5 Random Integers:");
  for (int i = 0; i < 5; i++) {
    print("→ ${random.nextInt(100)}");
  }

  // Generate random double value (0.0–1.0)
  double randomDouble = random.nextDouble();
  print("\nRandom Double: ${randomDouble.toStringAsFixed(3)}");

  // Shuffle a list randomly
  List<String> names = ["Om", "Samsritha", "Raj", "Kiran", "Riya"];
  names.shuffle(random);
  print("\nRandomly Shuffled Names: $names");
}

