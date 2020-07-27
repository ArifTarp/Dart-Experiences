void main() {
  var result = takeTheSquare(3);
  print(result);

  print("********************** OPTIONAL PARAMETER *************************");
  optionalTest("Arif");
  print("***********************************************");
  optionalTest("Arif", "Orhan");
  print("***********************************************");
  optionalTest("Arif", "Orhan", "İshak");
  print("************* OPTIONAL PARAMETER, NAMED PARAMETER ****************");
  optionalTest2("Arif");
  print("***********************************************");
  optionalTest2("Arif", c: "İshak");
  print("***********************************************");
  optionalTest2("Arif", b: "Orhan");
  print("***********************************************");
  optionalTest2("Arif", b: "Orhan", c: "İshak");
  print("***********************************************");
  // SUCH USE IS NOT ACCEPTED: optionalTest2(a: "Arif", b: "Orhan", c: "İshak");
  print("***********************************************");
  optionalTest2("Arif", c: "Orhan", b: "İshak");
}

int takeTheSquare(int count1) {
  return count1 * count1;
}

// must give a, can give b and c
void optionalTest(a, [b, c]) {
  print(a);
  print(b);
  print(c);
}

// must give a, can give b and c but must be declare b: ve c:
void optionalTest2(a, {b, c}) {
  print(a);
  print(b);
  print(c);
}
