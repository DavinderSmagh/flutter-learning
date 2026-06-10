class Calculator {
  // Properties
  String brand;
  
  // Constructor
  Calculator(this.brand);
  
  // Methods
  int add(int a, int b) {
    return a + b;
  }
  
  int subtract(int a, int b) {
    return a - b;
  }
  
  int multiply(int a, int b) {
    return a * b;
  }
  
  double divide(int a, int b) {
    return a / b;
  }
  
  void displayBrand() {
    print('Calculator brand: $brand');
  }
}

void main() {
  Calculator calc = Calculator('Casio');
  
  calc.displayBrand();
  print(calc.add(10, 5));       // 15
  print(calc.subtract(10, 5));  // 5
  print(calc.multiply(10, 5));  // 50
  print(calc.divide(10, 5));    // 2.0
}