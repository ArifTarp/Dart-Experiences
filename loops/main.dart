void main() {
  for (var i = 0; i < 10; i++) {
    print(i);
  }

  var students = ["Arif", "Orhan", "İshak"];
  for (var student in students) {
    print(student);
  }

  print("count");
  var count = 5;
  while (count <= 10) {
    print(count);
    count++;
  }

  print("count2");
  var count2 = 15;
  do {
    print(count2);
    count2++;
  } while (count2 <= 10);
}
