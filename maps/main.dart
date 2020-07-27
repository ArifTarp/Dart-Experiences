void main() {
  var dictionary = {"book": "Kitap", "table": "Masa", "pencil": "Kalem"};
  dictionary["teacher"] = "Öğretmen";
  dictionary["book"] = "Yeni Kitap";
  print(dictionary);
  print(dictionary["table"]);
  print("*********************************");
  // dictionary.forEach((key, value) => {
  //   print("Key: " + key + "  Value: " + value),
  //   print("Key: " + key + "  Value: " + value)
  // });
  dictionary.forEach((key, value) {
    print("Key: " + key + "  Value: " + value);
  });
  print("***************** KEYS ****************");
  for (var key in dictionary.keys) {
    print(key);
  }
  print("***************** VALUES ****************");
  for (var value in dictionary.values) {
    print(value);
  }
  print("*********************************");
  print(dictionary.length);
  print("*********************************");
  dictionary.remove("book");
  print(dictionary);
  print("*********************************");
  var isThere = dictionary.containsKey("teacher");
  print(isThere);
  print("*********************************");
  dictionary.clear();
  print(dictionary);
}
