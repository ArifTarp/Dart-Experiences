void main() {
  int a = 120;
  int b = 0;
  int result;

  try {
    result = a ~/ b;
    print(result);
  } on IntegerDivisionByZeroException catch (e) {
    print(e);
  } catch (e) {} finally {
    print("always works");
  }

  print("****************************************************");

  try {
    setAge(12);
  } catch (e) {
    print(e);
  }

  print("****************************************************");

  try {
    calculate(456);
  } on RuleException catch (e) {
    print(e.errorMessage());
  }
}

void setAge(int age) {
  if (age < 13) {
    throw new Exception("Your age must be over 13");
  }
}

class RuleException implements Exception {
  String errorMessage() => "Rule Error Occured.";
}

void calculate(double amount) {
  if (amount < 1000) {
    throw new RuleException();
  }
}
